#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "wave.h"
#include <time.h>
void readWaveFileSamples(FILE *ptr);
int readWaveHeader(FILE *new_fp);
unsigned int codewordDecompression(int codeword);
char codewordCompression( unsigned int sample_magnitude, int sign);
void compression();
void decompression();
time_t start, stop;

FILE *fp;
FILE *outfile;
struct HEADER header;
unsigned char buffer4[4];
unsigned char buffer2[2];
int* sample_data;
int* compressed_samples;
long num_samples;
const static int compressionchord[256] = {
                                    0,0,1,1,2,2,2,2,3,3,3,3,3,3,3,3,
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
                                    7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7
                                };
        
int main(int argc, char **argv)
{
    if(argc < 2)
    {
        printf("must add CLI arg for input .wav file.\n");
        exit(1);
    }
    fp = fopen(argv[1], "rb");
    if(fp == NULL)
    {
        printf("Error opening input file\n");
        exit(1);
    }
    char output_filename[] = "output_";
    strcat(output_filename, argv[1]);
    outfile = fopen(output_filename, "wb");
    
    readWaveHeader(outfile);
    readWaveFileSamples(fp);
    compression();
    decompression();

    printf("\nWriting WAV file\n");
    if(outfile == NULL)
    {
        printf("Unable to open output file.\n");
        exit(1);
    }
    long size_of_each_sample = (header.channels * header.bits_per_sample) / 8;
    int i;
    for(i = 0; i < num_samples; i++)
    {
        buffer2[0] = (sample_data[i] & 0x000000FF);
        buffer2[1] = ((sample_data[i] & 0X0000FF00) >> 8);
        fwrite(buffer2, size_of_each_sample, 1, outfile);
    }
    printf("done writing to output\n");
    fclose(outfile);
}

int readWaveHeader( FILE *new_fp)
{
    int read = 0;
    // 1 - 4: RIFF string - Marks the file as a riff file. Characters are each 1 byte long.
    read = fread(header.riff, sizeof(header.riff), 1, fp);
    fwrite(header.riff, sizeof(header.riff), 1, new_fp);
    // 5 - 8: Size of the overall file – 8 bytes, in bytes (32-bit integer)
    read = fread(buffer4, sizeof(buffer4), 1, fp);
    fwrite(&buffer4[0], sizeof(buffer4[0]), 1, new_fp);
    fwrite(&buffer4[1], sizeof(buffer4[1]), 1, new_fp);
    fwrite(&buffer4[2], sizeof(buffer4[2]), 1, new_fp);
    fwrite(&buffer4[3], sizeof(buffer4[3]), 1, new_fp);
    // convert little endian to big endian 4 byte int
    header.overall_size  = (buffer4[0] | (buffer4[1]<<8) | (buffer4[2]<<16) | (buffer4[3]<<24));
    // 9 - 12: WAV string - File Type Header. For our purposes, it always equals “WAVE”
    read = fread(header.wave, sizeof(header.wave), 1, fp);
    fwrite(header.wave, sizeof(header.wave), 1, new_fp);
    // 13 - 16: fmt string - Format chunk marker. Includes trailing null
    read = fread(header.fmt_chunk_marker, sizeof(header.fmt_chunk_marker), 1, fp);
    fwrite(header.fmt_chunk_marker, sizeof(header.fmt_chunk_marker), 1, new_fp);
    // 17 - 20: length of format data
    read = fread(buffer4, sizeof(buffer4), 1, fp);
    fwrite(&buffer4[0], sizeof(buffer4[0]), 1, new_fp);
    fwrite(&buffer4[1], sizeof(buffer4[1]), 1, new_fp);
    fwrite(&buffer4[2], sizeof(buffer4[2]), 1, new_fp);
    fwrite(&buffer4[3], sizeof(buffer4[3]), 1, new_fp);
    header.length_of_fmt = (buffer4[0] | (buffer4[1] << 8) |	(buffer4[2] << 16) | (buffer4[3] << 24));
    // 21 - 22: Type of format (1 is PCM) – 2 byte integer
    read = fread(buffer2, sizeof(buffer2), 1, fp);
    fwrite(&buffer2, sizeof(buffer2), 1, new_fp);
    header.format_type = (buffer2[0] | (buffer2[1] << 8));
    // 23 - 24: Number of Channels – 2 byte integer
    read = fread(buffer2, sizeof(buffer2), 1, fp);
    fwrite(&buffer2, sizeof(buffer2), 1, new_fp);
    header.channels = (buffer2[0] | (buffer2[1] << 8));
    // 25 - 28: Sample Rate – 32 byte integer; Sample Rate = Number of Samples per second
    read = fread(buffer4, sizeof(buffer4), 1, fp);
    fwrite(&buffer4[0], sizeof(buffer4[0]), 1, new_fp);
    fwrite(&buffer4[1], sizeof(buffer4[1]), 1, new_fp);
    fwrite(&buffer4[2], sizeof(buffer4[2]), 1, new_fp);
    fwrite(&buffer4[3], sizeof(buffer4[3]), 1, new_fp);
    header.sample_rate = (buffer4[0] | (buffer4[1] << 8) | (buffer4[2] << 16) | (buffer4[3] << 24));
    // 29 - 32: Byte rate - (Sample Rate * BitsPerSample * Channels) / 8
    read = fread(buffer4, sizeof(buffer4), 1, fp);
    fwrite(&buffer4[0], sizeof(buffer4[0]), 1, new_fp);
    fwrite(&buffer4[1], sizeof(buffer4[1]), 1, new_fp);
    fwrite(&buffer4[2], sizeof(buffer4[2]), 1, new_fp);
    fwrite(&buffer4[3], sizeof(buffer4[3]), 1, new_fp);
    header.byterate  = (buffer4[0] | (buffer4[1] << 8) |	(buffer4[2] << 16) | (buffer4[3] << 24));
    // 33 - 34: Block Alignment - (BitsPerSample * Channels) / 8
    read = fread(buffer2, sizeof(buffer2), 1, fp);
    fwrite(&buffer2, sizeof(buffer2), 1, new_fp);
    header.block_align = (buffer2[0] | (buffer2[1] << 8));
    // 35 - 36: Bits per sample
    read = fread(buffer2, sizeof(buffer2), 1, fp);
    fwrite(&buffer2, sizeof(buffer2), 1, new_fp);
    header.bits_per_sample = (buffer2[0] | (buffer2[1] << 8));
    // 37 - 40: data string - “data” chunk header. Marks the beginning of the data section
    read = fread(header.data_chunk_header, sizeof(header.data_chunk_header), 1, fp);
    if(strcmp(header.data_chunk_header, "LIST") == 0)
    {
        printf("Unable to read wave containing LIST");
        exit(1);
    }
    fwrite(&header.data_chunk_header, sizeof(header.data_chunk_header), 1, new_fp);
    // 41 - 44: data size
    read = fread(buffer4, sizeof(buffer4), 1, fp);
    fwrite(&buffer4[0], sizeof(buffer4[0]), 1, new_fp);
    fwrite(&buffer4[1], sizeof(buffer4[1]), 1, new_fp);
    fwrite(&buffer4[2], sizeof(buffer4[2]), 1, new_fp);
    fwrite(&buffer4[3], sizeof(buffer4[3]), 1, new_fp);
    header.data_size = (buffer4[0] |	(buffer4[1] << 8) |	(buffer4[2] << 16) | (buffer4[3] << 24 ));
    printf("COMPLETED Reading Wave File Headers \n\n");
}

void readWaveFileSamples(FILE *ptr)
{
    printf("Starting reading WAV file samples\n");
    if(header.format_type == 1)
    {
        printf("Number of channels %i", header.channels);
        long size_of_each_sample = ((header.channels * header.bits_per_sample) / 8);
        long bytes_in_each_channel = (size_of_each_sample/header.channels);
        num_samples = (8 * header.data_size) / (header.channels * header.bits_per_sample);
        sample_data = calloc(num_samples, sizeof(int));
        if(sample_data == NULL)
        {
            printf("Couldn't allocate memory\n");
            exit(1);
        }
        int i;
        for(i = 0 ; i < num_samples; i++)
        {
            fread(buffer2, size_of_each_sample, 1, ptr);
            sample_data[i] = ((buffer2[0]) | (buffer2[1] << 8));
        }
    }
    else
    {
        printf("Can only read PCM.");
        exit(1);
    }
    printf("Finished reading WAV file samples\n");
}

inline char codewordCompression( unsigned int sample_magnitude, int sign)
{
    char chord = compressionchord[(sample_magnitude >> 5)];
    char step = ((sample_magnitude >> (chord+1)) & 0xF);
    char ccw = ((sign << 7) | (chord << 4) | step);
    return ccw;  
}

inline unsigned int codewordDecompression(int codeword)
{
    int chord = ((codeword & 0x70) >> 4);
    int step = (codeword & 0x0F);
    
    switch(chord)
    {
        case 0x7:
            return ((1 << 7) | (step << 8) | (1 << 12));
        case 0x6:
            return ((1 << 6) | (step << 7) | (1 << 11));
        case 0x5:
            return ((1 << 5) | (step << 6) | (1 << 10));
        case 0x4:
            return ((1 << 4) | (step << 5) | (1 << 9));
        case 0x3:
            return ((1 << 3) | (step << 4) | (1 << 8));
        case 0x2:
            return ((1 << 2) | (step << 3) | (1 << 7));
        case 0x1:
            return ((1 << 1) | (step << 2) | (1 << 6));
        case 0x0:
            return ((1) | (step << 1) | (1 << 5));
    } 
}

void compression() 
{
    compressed_samples = calloc(num_samples, sizeof(int));
    int i;
    for(i = 0; i < num_samples; i ++)
    {
        int sample = (sample_data[i] >> 2);
        int sign = ((~sample >> 31) & 0x1); 
        unsigned int sample_magnitude = ((sample < 0 ? -sample : sample) + 33);
        int ccw = ~codewordCompression(sample_magnitude, sign);
        compressed_samples[i] = ccw;   
    }
}

void decompression() 
{
    int i;
    for(i = 0; i < num_samples; i ++)
    {
        int sample = ~(compressed_samples[i]);
        int sign = ((sample & 0x80) >> 7);
        unsigned int sample_magnitude = (codewordDecompression(sample) - 33); 
        sample = (sign == 1 ? sample_magnitude : -sample_magnitude);
        sample_data[i] = (sample << 2);
    }
}