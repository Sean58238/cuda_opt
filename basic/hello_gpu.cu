#include <stdio.h>

__global__ void hello_from_gpu()
{
    printf("Hello world, from GPU!\n");
}

int main(void)
{
    printf("Hello world, from CPU!\n");

    //call core funcation, allocat 1 block, 10 threads
    hello_from_gpu<<<1, 10>>>();
     
    //syncchronize fo host and device
    cudaDeviceSynchronize();

    return 0;

}