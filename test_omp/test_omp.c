#include <stdio.h>

int main()
{
#pragma omp parallel
  {
    printf("hello world! (%d / %d)\n", omp_get_thread_num(), omp_get_num_threads());
  }

}
