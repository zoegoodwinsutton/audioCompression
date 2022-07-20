#include <stdio.h>
#include <string.h>
//#include <unistd.h>
#include <stdlib.h>
#include "wave.h"
void readWaveFileSamples(FILE *ptr);
int readWaveHeader(FILE *ptr);
void writeWaveFileSamples();
void compression();
void decompression();
FILE *outfile;
FILE *ptr;
char *filename;
struct HEADER header;
unsigned char buffer4[4];
unsigned char buffer2[2];
int* sample_data;
int* compressed_samples;
long num_samples;
int main(){
    ptr = fopen("zoe.wav", "rb");
    if(ptr == NULL){
        printf("Error opening file\n");
        exit(1);
    }
    readWaveHeader(ptr);
    readWaveFileSamples(ptr);

    compression();
    int i;
    printf("\n");
    for(i = 0; i < num_samples; i++){
         printf("%d ", compressed_samples[i]);
    }
    decompression();
    int j;
    printf("\n");
    for(j = 0; j < num_samples; j++){
        printf("%d ", sample_data[j]);
    }
    printf("Writing WAV file\n");
    outfile = fopen("output.wav", "wb");
    fclose(outfile);
    // writeWaveFileSamples(outfile);
}
int readWaveHeader(FILE *ptr){
    int read = 0;
    read = fread(header.riff, sizeof(header.riff), 1, ptr);
    printf("(1-4): %s \n", header.riff);
    read = fread(buffer4, sizeof(buffer4), 1, ptr);
    printf("%u %u %u %u\n", buffer4[0], buffer4[1], buffer4[2], buffer4[3]);
    // convert little endian to big endian 4 byte int
    header.overall_size  = buffer4[0] |
                        (buffer4[1]<<8) |
                        (buffer4[2]<<16) |
                        (buffer4[3]<<24);
    printf("(5-8) Overall size: bytes:%u, Kb:%u \n", header.overall_size, header.overall_size/1024);
    read = fread(header.wave, sizeof(header.wave), 1, ptr);
    printf("(9-12) Wave marker: %s\n", header.wave);
    read = fread(header.fmt_chunk_marker, sizeof(header.fmt_chunk_marker), 1, ptr);
    printf("(13-16) Fmt marker: %s\n", header.fmt_chunk_marker);
    read = fread(buffer4, sizeof(buffer4), 1, ptr);
    printf("%u %u %u %u\n", buffer4[0], buffer4[1], buffer4[2], buffer4[3]);

 // convert little endian to big endian 4 byte integer
    header.length_of_fmt = buffer4[0] |
                            (buffer4[1] << 8) |
                            (buffer4[2] << 16) |
                            (buffer4[3] << 24);
    printf("(17-20) Length of Fmt header: %u \n", header.length_of_fmt);
    read = fread(buffer2, sizeof(buffer2), 1, ptr); printf("%u %u \n", buffer2[0], buffer2[1]);
    header.format_type = buffer2[0] | (buffer2[1] << 8);

    char format_name[10] = "";
    if (header.format_type == 1)
        strcpy(format_name,"PCM");
    else if (header.format_type == 6)
        strcpy(format_name, "A-law");
    else if (header.format_type == 7)
        strcpy(format_name, "Mu-law");
    printf("(21-22) Format type: %u %s \n", header.format_type, format_name);
    read = fread(buffer2, sizeof(buffer2), 1, ptr);
    printf("%u %u \n", buffer2[0], buffer2[1]);
    header.channels = buffer2[0] | (buffer2[1] << 8);
    printf("(23-24) Channels: %u \n", header.channels);
    read = fread(buffer4, sizeof(buffer4), 1, ptr);
    printf("%u %u %u %u\n", buffer4[0], buffer4[1], buffer4[2], buffer4[3]);
    header.sample_rate = buffer4[0] |
                        (buffer4[1] << 8) |
                        (buffer4[2] << 16) |
                        (buffer4[3] << 24);
    printf("(25-28) Sample rate: %u\n", header.sample_rate);
    read = fread(buffer4, sizeof(buffer4), 1, ptr);
    printf("%u %u %u %u\n", buffer4[0], buffer4[1], buffer4[2], buffer4[3]);
    header.byterate  = buffer4[0] |
                        (buffer4[1] << 8) |
                        (buffer4[2] << 16) |
                        (buffer4[3] << 24);
    printf("(29-32) Byte Rate: %u , Bit Rate:%u\n", header.byterate, header.byterate*8);

    read = fread(buffer2, sizeof(buffer2), 1, ptr);
    printf("%u %u \n", buffer2[0], buffer2[1]);
    header.block_align = buffer2[0] |
                    (buffer2[1] << 8);
    printf("(33-34) Block Alignment: %u \n", header.block_align);
    read = fread(buffer2, sizeof(buffer2), 1, ptr);
    printf("%u %u \n", buffer2[0], buffer2[1]);
    header.bits_per_sample = buffer2[0] |
                    (buffer2[1] << 8);
    printf("(35-36) Bits per sample: %u \n", header.bits_per_sample);
    read = fread(header.data_chunk_header, sizeof(header.data_chunk_header), 1, ptr);
    printf("(37-40) Data Marker: %s \n", header.data_chunk_header);
    read = fread(buffer4, sizeof(buffer4), 1, ptr);
    printf("%u %u %u %u\n", buffer4[0], buffer4[1], buffer4[2], buffer4[3]);
    header.data_size = buffer4[0] |
                    (buffer4[1] << 8) |
                    (buffer4[2] << 16) |
                    (buffer4[3] << 24 );
    printf("(41-44) Size of data chunk: %u \n", header.data_size);
    // calculate no.of samples
    long num_samples = (8 * header.data_size) / (header.channels * header.bits_per_sample);
    printf("Number of samples:%lu \n", num_samples);

    long size_of_each_sample = (header.channels * header.bits_per_sample) / 8;
    printf("Size of each sample:%ld bytes\n", size_of_each_sample);
    // calculate duration of file
    float duration_in_seconds = (float) header.overall_size / header.byterate;
    printf("Approx.Duration in seconds=%f\n", duration_in_seconds);
}
void readWaveFileSamples(FILE *ptr){
    if(header.format_type == 1){
        printf("Number of channels %i", header.channels);
        long size_of_each_sample = (header.channels * header.bits_per_sample) / 8;
        long bytes_in_each_channel = (size_of_each_sample/header.channels);
        num_samples = (8 * header.data_size) / (header.channels * header.bits_per_sample);
        sample_data = calloc(num_samples, size_of_each_sample);
        if(sample_data == NULL){
            printf("Couldn't allocate memory\n");
            exit(1);
        }
        int i;
        for(i = 0 ; i < num_samples; i++){
            fread(buffer2, size_of_each_sample, 1, ptr);
            sample_data[i] = (buffer2[0]) | (buffer2[1] << 8);
        }
        for(i = 0 ; i < num_samples; i++){
            printf("%d ", sample_data[i]);
        }
        //call compress
        //call decompress

    }else{
        printf("Can only read PCM.");
        exit(1);
    }
}
void writeWaveFileSamples(FILE* outfile){
    // int i ;
    // long size_of_each_sample = (header.channels * header.bits_per_sample) / 8;
    // for(i =0; i < num_samples; i++){
    //     // buffer2[0] = sample_data[i] & 0x000000FF;
    //     // buffer2[1] = (sample_data[i] & 0X0000FF00) >> 8;
    //     // fwrite(buffer2,size_of_each_sample,1,outfile);
    // }
    // fclose(outfile);
}
int signum( int sample) {
    if (sample < 0) return 0;
    else return 1;
}

int magnitude (int sample) {
    if (sample < 0) ~sample;
    else return sample;
}

int codewordCompression( unsigned int sample_magnitude, int sign){
    int chord, step;
    int tmp;

    if (sample_magnitude & (1 << 12)){
        printf("1");
        chord = 0x7;
        step = (sample_magnitude >> 8) & 0xF;
        printf("step %d ", step);
        tmp = (sign << 7) | (chord << 4) | step;
        printf("tmp %d ", tmp);
        return (int)tmp;
    } 
        if (sample_magnitude & (1 << 11)){
        printf("2");
        chord = 0x6;
        step = (sample_magnitude >> 7) & 0xF;
        tmp = (sign << 7) | (chord << 4) | step;
        return (int)tmp;
    }
        if (sample_magnitude & (1 << 10)){
        printf("3");
        chord = 0x5;
        step = (sample_magnitude >> 6) & 0xF;
        tmp = (sign << 7) | (chord << 4) | step;
        return (int)tmp;
    }
        if (sample_magnitude & (1 << 9)){
        printf("4");
        chord = 0x4;
        step = (sample_magnitude >> 5) & 0xF;
        tmp = (sign << 7) | (chord << 4) | step;
        return (int)tmp;
    }
        if (sample_magnitude & (1 << 8)){
        printf("5");
        chord = 0x3;
        step = (sample_magnitude >> 4) & 0xF;
        tmp = (sign << 7) | (chord << 4) | step;
        return (int)tmp;
    }
        if (sample_magnitude & (1 << 7)){
        printf("6");
        chord = 0x2;
        step = (sample_magnitude >> 3) & 0xF;
        tmp = (sign << 7) | (chord << 4) | step;
        return (int)tmp;
    }
        if (sample_magnitude & (1 << 6)){
        printf("7");
        chord = 0x1;
        step = (sample_magnitude >> 2) & 0xF;
        tmp = (sign << 7) | (chord << 4) | step;
        return (int)tmp;
    }
        if (sample_magnitude & (1 << 5)){
        printf("8");
        chord = 0x0;
        step = (sample_magnitude >> 1) & 0xF;
        tmp = ((sign << 7) | (chord << 4) | step);
        return (int)tmp;
    }
}

unsigned int codewordDecompression(int codeword){
    int chord = (codeword & 0x70) >> 4;
    int step = (codeword & 0x0F);
    //lowkey dunno what msb and lsb are must do more research
    // if (chord == 0x7) {
    //     printf("8");
    //     return ((lsb << 7) | (step << 8) | (1 << 12));
    // } 
    // if (chord == 0x6) {
    //     printf("7");
    //     return (lsb << 6) | (step << 7) | (1 << 11);
    // } 
    // if (chord == 0x5) {
    //     printf("6");
    //     return (lsb << 5) | (step << 6) | (1 << 10);
    // } 
    // if (chord == 0x4) {
    //     printf("5");
    //     return (lsb << 4) | (step << 5) | (1 << 9);
    // } 
    // if (chord == 0x3) {
    //     printf("4");
    //     return (lsb << 3) | (step << 4) | (1 << 8);
    // } 
    // if (chord == 0x2) {
    //     printf("3");
    //     return (lsb << 2) | (step << 3) | (1 << 7);
    // } 
    // if (chord == 0x1) {
    //     printf("2");
    //     return (lsb << 1) | (step << 2) | (1 << 6);
    // } 
    // if (chord == 0x0) {
    //     printf("1");
    //     return lsb | (step << 1) | (1 << 5);
    // } 
    return (1<<chord) | (step << (1+chord)) | (1 << (chord+5));
}

void compression() {
    compressed_samples = calloc(num_samples, sizeof(char));
    //check for enough memory
    int i;
    for(i = 0; i < num_samples; i ++){
        printf("\n sample before %d, %d ", sample_data[i], i);
        int sample = (sample_data[i] >> 2);
        printf("sample after %d ", sample);
        int sign = signum(sample);
        printf("sign %d ", sign);
        unsigned int sample_magnitude = magnitude(sample) + 33; //from slides??
        printf("magnitude %d ", sample_magnitude);
        compressed_samples[i] = ~codewordCompression(sample_magnitude, sign);
        printf(" compressed %d ", compressed_samples[i]);
        
    }
}

void decompression() {
    int i;
    for(i = 0; i < num_samples; i ++){
        printf("\n sample before %d, %d ", compressed_samples[i], i);
        int sample = ~(compressed_samples[i]);
        printf("sample after %d ", sample);
        int sign = (sample & 0x80) >> 7;
        printf("sign %d ", sign);
        unsigned int sample_magnitude = (codewordDecompression(sample) - 33);
        printf(" magnitude %d ", sample_magnitude); 
        if(sign == 1) sample = sample_magnitude;
        else sample = -sample_magnitude;
        printf("sample mag %d ", sample);
        printf("sample shift %d ", (sample<<2));
        sample_data[i] = sample << 2;
    }
}

