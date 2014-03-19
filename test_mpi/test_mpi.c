// > mpicc test_mpi.c
// > mpiexec -np 4 a.out

#include <stdio.h>
#include <string.h>

#include "mpi.h"

int main(int argc, char **argv)
{
  int myid;
  int p;
  int source;
  int dest;
  int tag=0;
  char message[100];
 
  MPI_Status status;

  MPI_Init(&argc, &argv);

  MPI_Comm_rank(MPI_COMM_WORLD, &myid);

  MPI_Comm_size(MPI_COMM_WORLD, &p);

  printf("Hello from %d/%d\n", myid, p);

  MPI_Finalize();


}
