#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <stdlib.h>
#include "wave.h"
FILE *ptr;
char *filename;
struct HEADER header;
unsigned char buffer4[4];

int main(){
    ptr = fopen("zoe.wav", "rb");
    if(ptr == NULL){
        printf("Error opening file\n");
        exit(1);
    }
    int read = 0;
    read = fread(header.riff, sizeof(header.riff), 1, ptr);
    printf("(1-4): %s n", header.riff);
    read = fread(buffer4, sizeof(buffer4), 1, ptr);
    printf("%u %u %u %un", buffer4[0], buffer4[1], buffer4[2], buffer4[3]);
    // convert little endian to big endian 4 byte int
    header.overall_size  = buffer4[0] |
                        (buffer4[1]<<8) |
                        (buffer4[2]<<16) |
                        (buffer4[3]<<24);
    printf("(5-8) Overall size: bytes:%u, Kb:%u n", header.overall_size, header.overall_size/1024);
    read = fread(header.wave, sizeof(header.wave), 1, ptr);
    printf("(9-12) Wave marker: %sn", header.wave);
    read = fread(header.fmt_chunk_marker, sizeof(header.fmt_chunk_marker), 1, ptr);
    printf("(13-16) Fmt marker: %sn", header.fmt_chunk_marker);
    printf("hello world");
}
