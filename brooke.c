#include <stdio.h>
#include <string.h>
//#include <unistd.h>
#include <stdlib.h>
#include "wave.h"
#include <time.h>
void readWaveFileSamples(FILE *ptr);
int readWaveHeader(FILE *new_fp);
unsigned int codewordDecompression(int codeword);
char codewordCompression( unsigned int sample_magnitude, int sign);
void writeWaveFileSamples();
void compression();
void decompression();
time_t start, stop;

FILE *fp;
char *filename;
struct HEADER header;
unsigned char buffer4[4];
unsigned char buffer2[2];
int* sample_data;
int* compressed_samples;
long num_samples;
static int exp_lut[256] = {0,0,1,1,2,2,2,2,3,3,3,3,3,3,3,3,
                               4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,
                               5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,
                               5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,
                               6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,
                               6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,
                               6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,
                               6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,
                               7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,
                               7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,
                               7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,
                               7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,
                               7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,
                               7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,
                               7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,
                               7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7};
static unsigned int decompressionlut[8] = {33, 66, 132, 264, 528, 1056, 2212, 4224};
        
int main(int argc, char **argv){
    if(argc < 2){
        printf("must add CLI arg for input .wav file.\n");
        exit(1);
    }
    FILE *outfile;
    fp = fopen(argv[1], "rb");
    if(fp == NULL){
        printf("Error opening input file\n");
        exit(1);
    }
    char output_filename[] = "output_";
    strcat(output_filename, argv[1]);
    outfile = fopen(output_filename, "wb");
    
    readWaveHeader(outfile);
    readWaveFileSamples(fp);

    compression();

    int i;
    decompression();
    printf("\n");
    printf("\nWriting WAV file\n");
    
    if(outfile == NULL){
        printf("Unable to open output file.\n");
        exit(1);
    }
    long size_of_each_sample = (header.channels * header.bits_per_sample) / 8;
    for(i =0; i < num_samples; i++){
        buffer2[0] = sample_data[i] & 0x000000FF;
        buffer2[1] = (sample_data[i] & 0X0000FF00) >> 8;
        fwrite(buffer2,size_of_each_sample,1,outfile);
    }
    printf("done writing to output\n");
    fclose(outfile);
}
int readWaveHeader( FILE *new_fp){
    //just easy read it in one thing........
        int read = 0;

    printf("Reading Wave File Headers.... \n");

    // 1 - 4: RIFF string - Marks the file as a riff file. Characters are each 1 byte long.
    read = fread(header.riff, sizeof(header.riff), 1, fp);
    fwrite(header.riff, sizeof(header.riff), 1, new_fp);
    printf("(1-4): %s \n", header.riff);

    // 5 - 8: Size of the overall file – 8 bytes, in bytes (32-bit integer)
    read = fread(buffer4, sizeof(buffer4), 1, fp);
    fwrite(&buffer4[0], sizeof(buffer4[0]), 1, new_fp);
    fwrite(&buffer4[1], sizeof(buffer4[1]), 1, new_fp);
    fwrite(&buffer4[2], sizeof(buffer4[2]), 1, new_fp);
    fwrite(&buffer4[3], sizeof(buffer4[3]), 1, new_fp);
    // convert little endian to big endian 4 byte int
    header.overall_size  = buffer4[0] | (buffer4[1]<<8) | (buffer4[2]<<16) | (buffer4[3]<<24);
    printf("(5-8) Overall size: bytes:%u, Kb:%u \n", header.overall_size, header.overall_size/1024);

    // 9 - 12: WAV string - File Type Header. For our purposes, it always equals “WAVE”
    read = fread(header.wave, sizeof(header.wave), 1, fp);
    fwrite(header.wave, sizeof(header.wave), 1, new_fp);
    printf("(9-12) Wave marker: %s\n", header.wave);

    // 13 - 16: fmt string - Format chunk marker. Includes trailing null
    read = fread(header.fmt_chunk_marker, sizeof(header.fmt_chunk_marker), 1, fp);
    fwrite(header.fmt_chunk_marker, sizeof(header.fmt_chunk_marker), 1, new_fp);
    printf("(13-16) Fmt marker: %s\n", header.fmt_chunk_marker);

    // 17 - 20: length of format data
    read = fread(buffer4, sizeof(buffer4), 1, fp);
    fwrite(&buffer4[0], sizeof(buffer4[0]), 1, new_fp);
    fwrite(&buffer4[1], sizeof(buffer4[1]), 1, new_fp);
    fwrite(&buffer4[2], sizeof(buffer4[2]), 1, new_fp);
    fwrite(&buffer4[3], sizeof(buffer4[3]), 1, new_fp);
    header.length_of_fmt = buffer4[0] | (buffer4[1] << 8) |	(buffer4[2] << 16) | (buffer4[3] << 24);
    printf("(17-20) Length of Fmt header: %u \n", header.length_of_fmt);

    // 21 - 22: Type of format (1 is PCM) – 2 byte integer
    read = fread(buffer2, sizeof(buffer2), 1, fp);
    fwrite(&buffer2, sizeof(buffer2), 1, new_fp);
    header.format_type = buffer2[0] | (buffer2[1] << 8);
    printf("(21-22) Format type: %u \n", header.format_type);

    // 23 - 24: Number of Channels – 2 byte integer
    read = fread(buffer2, sizeof(buffer2), 1, fp);
    fwrite(&buffer2, sizeof(buffer2), 1, new_fp);
    header.channels = buffer2[0] | (buffer2[1] << 8);
    printf("(23-24) Channels: %u \n", header.channels);

    // 25 - 28: Sample Rate – 32 byte integer; Sample Rate = Number of Samples per second
    read = fread(buffer4, sizeof(buffer4), 1, fp);
    fwrite(&buffer4[0], sizeof(buffer4[0]), 1, new_fp);
    fwrite(&buffer4[1], sizeof(buffer4[1]), 1, new_fp);
    fwrite(&buffer4[2], sizeof(buffer4[2]), 1, new_fp);
    fwrite(&buffer4[3], sizeof(buffer4[3]), 1, new_fp);
    header.sample_rate = buffer4[0] | (buffer4[1] << 8) | (buffer4[2] << 16) | (buffer4[3] << 24);
    printf("(25-28) Sample rate: %u\n", header.sample_rate);

    // 29 - 32: Byte rate - (Sample Rate * BitsPerSample * Channels) / 8
    read = fread(buffer4, sizeof(buffer4), 1, fp);
    fwrite(&buffer4[0], sizeof(buffer4[0]), 1, new_fp);
    fwrite(&buffer4[1], sizeof(buffer4[1]), 1, new_fp);
    fwrite(&buffer4[2], sizeof(buffer4[2]), 1, new_fp);
    fwrite(&buffer4[3], sizeof(buffer4[3]), 1, new_fp);
    header.byterate  = buffer4[0] | (buffer4[1] << 8) |	(buffer4[2] << 16) | (buffer4[3] << 24);
    printf("(29-32) Byte Rate: %u , Bit Rate:%u\n", header.byterate, header.byterate*8);

    // 33 - 34: Block Alignment - (BitsPerSample * Channels) / 8
    read = fread(buffer2, sizeof(buffer2), 1, fp);
    fwrite(&buffer2, sizeof(buffer2), 1, new_fp);
    header.block_align = buffer2[0] | (buffer2[1] << 8);
    printf("(33-34) Block Alignment: %u \n", header.block_align);

    // 35 - 36: Bits per sample
    read = fread(buffer2, sizeof(buffer2), 1, fp);
    fwrite(&buffer2, sizeof(buffer2), 1, new_fp);
    header.bits_per_sample = buffer2[0] | (buffer2[1] << 8);
    printf("(35-36) Bits per sample: %u \n", header.bits_per_sample);

    // 37 - 40: data string - “data” chunk header. Marks the beginning of the data section
    read = fread(header.data_chunk_header, sizeof(header.data_chunk_header), 1, fp);
    if(strcmp(header.data_chunk_header, "LIST") == 0){
        printf("I SEE A LIST!\n");
        int i;
        for(i = 0; i < 7 ; i++){
            read = fread(buffer4, sizeof(buffer4), 1, fp);
            fwrite(&buffer4[0], sizeof(buffer4[0]), 1, new_fp);
            fwrite(&buffer4[1], sizeof(buffer4[1]), 1, new_fp);
            fwrite(&buffer4[2], sizeof(buffer4[2]), 1, new_fp);
            fwrite(&buffer4[3], sizeof(buffer4[3]), 1, new_fp);
        }
        read = fread(buffer2, sizeof(buffer2), 1, fp);
        fwrite(&buffer2, sizeof(buffer2), 1, new_fp);
        read = fread(header.data_chunk_header, sizeof(header.data_chunk_header), 1, fp);
    }
    fwrite(&header.data_chunk_header, sizeof(header.data_chunk_header), 1, new_fp);
    printf("(37-40) Data Marker: %s \n", header.data_chunk_header);

    // 41 - 44: data size
    read = fread(buffer4, sizeof(buffer4), 1, fp);
    fwrite(&buffer4[0], sizeof(buffer4[0]), 1, new_fp);
    fwrite(&buffer4[1], sizeof(buffer4[1]), 1, new_fp);
    fwrite(&buffer4[2], sizeof(buffer4[2]), 1, new_fp);
    fwrite(&buffer4[3], sizeof(buffer4[3]), 1, new_fp);
    header.data_size = buffer4[0] |	(buffer4[1] << 8) |	(buffer4[2] << 16) | (buffer4[3] << 24 );
    printf("(41-44) Size of data chunk: %u \n", header.data_size);

    printf("COMPLETED Reading Wave File Headers \n\n");
}
void readWaveFileSamples(FILE *ptr){
    printf("Starting reading WAV file samples\n");
    if(header.format_type == 1){
        printf("Number of channels %i", header.channels);
        long size_of_each_sample = (header.channels * header.bits_per_sample) / 8;
        long bytes_in_each_channel = (size_of_each_sample/header.channels);
        num_samples = (8 * header.data_size) / (header.channels * header.bits_per_sample);
        sample_data = calloc(num_samples, sizeof(int));
        if(sample_data == NULL){
            printf("Couldn't allocate memory\n");
            exit(1);
        }
        int i;
        for(i = 0 ; i < num_samples; i++){
            fread(buffer2, size_of_each_sample, 1, ptr);
            sample_data[i] = (buffer2[0]) | (buffer2[1] << 8);
        }
    }else{
        printf("Can only read PCM.");
        exit(1);
    }
    printf("Finished reading WAV file samples\n");
}

inline char codewordCompression( unsigned int sample_magnitude, int sign){
    char chord, step;
    char ccw;

    chord = exp_lut[(sample_magnitude >> 4) & 0xFF];
    step = (sample_magnitude >> (chord+1)) & 0xF;
    ccw = ((sign << 7) | (chord << 4) | step);
    return ccw;
}

inline unsigned int codewordDecompression(int codeword){
    int chord = (codeword & 0x70) >> 4;
    int step = (codeword & 0x0F);
    return (1<<chord) | (step << (1+chord)) | (1 << (chord+5));
}

void compression() {
    start = clock();
    compressed_samples = calloc(num_samples, sizeof(int));
    int i;
    for(i = 0; i < num_samples; i ++){
        int sample = (sample_data[i] >> 2);
        int sign =  ((~sample >> 31) & 0x1); //put the lo
        unsigned int sample_magnitude = (sample < 0 ? -sample : sample) + 33; //put the logic here instead of function call
        int temp = ~codewordCompression(sample_magnitude, sign);
        compressed_samples[i] = temp;   
    }
    stop = clock();
    printf("Audio Compression using Mu Law: %f seconds \n", (double) (stop - start) / CLOCKS_PER_SEC);
    printf("Audio Compression using Mu Law: %d clock cycles \n\n",  (stop - start));
}

void decompression() {
    start = clock();
    int i;
    for(i = 0; i < num_samples; i ++){
        int sample = ~(compressed_samples[i]);
        int sign = (sample & 0x80) >> 7;
        unsigned int sample_magnitude = (codewordDecompression(sample) - 33); 
        if(sign == 1) sample = sample_magnitude;
        else sample = -sample_magnitude;
        sample_data[i] = sample << 2;
    }
    stop = clock();
    printf("Audio Decompression using Mu Law: %f seconds\ns", (double) (stop - start) / CLOCKS_PER_SEC);
    printf("Audio Decompression using Mu Law: %d clock cycles\n\n", (stop - start));
}
