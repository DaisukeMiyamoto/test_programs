
#include <stdio.h>
#include <math.h>

#include "mkl_vml.h"

#define BUFFER_SIZE 400000
#define LOOP_NUM 1000

int main()
{
  double tmp1_table[BUFFER_SIZE];
  double tmp2_table[BUFFER_SIZE];
  int i, j;

  for(i=0; i<BUFFER_SIZE; i++){
    tmp1_table[i] = i*1.001;
  }

  /*
  for(i=0; i<LOOP_NUM; i++){
    vdExp(BUFFER_SIZE, tmp1_table, tmp2_table);
    vdExp(BUFFER_SIZE, tmp2_table, tmp1_table);
  }
  */

  for(i=0; i<LOOP_NUM; i++){
    for(j=0; j<BUFFER_SIZE; j++){
      tmp2_table[j] = exp(tmp1_table[j]);
      tmp1_table[j] = exp(tmp2_table[j]);
    }
  }

  for(i=0; i<BUFFER_SIZE; i++){
    printf("%f\n", tmp1_table[i]);
  }    

  return(0);

}
