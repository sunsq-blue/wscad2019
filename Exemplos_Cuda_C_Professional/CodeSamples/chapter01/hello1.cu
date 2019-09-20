#include "../common/common.h"
#include <stdio.h>

/*
 * A simple introduction to programming in CUDA. This program prints "Hello
 * World from GPU! from 10 CUDA threads running on the GPU.
 */

__global__ void helloFromGPU()
{
    printf("Hello World from GPU!\n");
}

int main(int argc, char **argv)
{
   

    helloFromGPU<<<2, 3>>>();
CHECK(cudaDeviceReset());

 printf("---->  CPU CPU !!!! <-----\n");

    
    return 0;
}


