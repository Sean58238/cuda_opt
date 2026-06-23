#include <stdio.h>

//core funcation, return type void
__global__ void hello_from_gpu()
{
    printf("Hello world, from GPU!\n");
}

int main(void)
{
    //call from CPU
    printf("Hello world, from CPU!\n");

    //call core funcation, allocat 1 block, 10 threads
    hello_from_gpu<<<1, 10>>>();
     
    //syncchronize fo host and device, refresh out buffer
    cudaDeviceSynchronize();

    return 0;

}