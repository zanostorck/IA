
#include <stdlib.h>
#include <stdio.h>
#include <string.h>

#define MAXSIZE 1024

int main(int argc, char* argv[]){
  int num;
  int i, j;

  FILE *original_file;
  FILE *output_file;

  char *in_file;
  char *out_file;
  char buffer[MAXSIZE];


  if(argc != 3){
    printf("Usage: ./parser [input_file] [output_file]\n");
    return 0;
  }

  // Get the file name from terminal
  in_file = argv[1];
  out_file = argv[2];

  // Opens the original file for Read
  original_file = fopen(in_file,"r");

  // Opens the output file for write
  output_file = fopen(out_file, "w");

  if(original_file == NULL){
    printf("Error while opening the file!\n");
    exit(1);
  }

  while (fgets(buffer, sizeof(buffer), original_file) != NULL){
    buffer[strlen(buffer)-1] = '\0';
    fputs(buffer, output_file);

  }


  fclose(output_file);
  fclose(original_file);
  return 0;
}
