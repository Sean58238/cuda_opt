# 定义源文件和目标可执行文件名
TEST_SOURCE = hello_gpu.cu
TARGETBIN := ./hello_gpu

# 指定 CUDA 编译器 nvcc
CC = nvcc

# 编译规则：指定目标架构（如 sm_70），防止在不匹配的显卡上运行报错
$(TARGETBIN): $(TEST_SOURCE)
	$(CC) -arch=sm_70 $(TEST_SOURCE) -o $(TARGETBIN)

# 声明 clean 为伪目标，避免与同名文件冲突
.PHONY: clean
clean:
	-rm -rf $(TARGETBIN)
	-rm -rf *.o