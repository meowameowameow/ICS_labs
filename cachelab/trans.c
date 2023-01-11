/*
 * trans.c - Matrix transpose B = A^T
 *
 * Each transpose function must have a prototype of the form:
 * void trans(int M, int N, int A[N][M], int B[M][N]);
 *
 * A transpose function is evaluated by counting the number of misses
 * on a 1KB direct mapped cache with a block size of 32 bytes.
 */
#include <stdio.h>
#include "cachelab.h"
#include "contracts.h"

int is_transpose(int M, int N, int A[N][M], int B[M][N]);

/*
 * transpose_submit - This is the solution transpose function that you
 *     will be graded on for Part B of the assignment. Do not change
 *     the description string "Transpose submission", as the driver
 *     searches for that string to identify the transpose function to
 *     be graded. The REQUIRES and ENSURES from 15-122 are included
 *     for your convenience. They can be removed if you like.
 */
char transpose_submit_desc[] = "Transpose submission";
void transpose_submit(int M, int N, int A[N][M], int B[M][N])
{
    REQUIRES(M > 0);
    REQUIRES(N > 0);
    
    int i, j, t, t1, t2, t3, t4, t5, t6, t7, t8;//共用到 11个局部变量
    //处理32X32矩阵
    if (M == 32) {
        //8X8分块
        for (i = 0; i < N; i += 8) {
            for (j = 0; j < M; j += 8) {
                //处理每一块：先取出一整行存入局部变量、再写入一整列
                for (t = i; t < i + 8; t++) {
                    t1 = A[t][j]; t2 = A[t][j + 1];
                    t3 = A[t][j + 2]; t4 = A[t][j + 3];
                    t5 = A[t][j + 4]; t6 = A[t][j + 5];
                    t7 = A[t][j + 6]; t8 = A[t][j + 7];

                    B[j][t] = t1; B[j + 1][t] = t2;
                    B[j + 2][t] = t3; B[j + 3][t] = t4;
                    B[j + 4][t] = t5; B[j + 5][t] = t6;
                    B[j + 6][t] = t7; B[j + 7][t] = t8;
                }
            }
        }
    }

    //64X64矩阵
    else if (M == 64) {
        //16X16分块
        for (i = 0; i < N; i += 8) {
            for (j = 0; j < M; j += 8) {
                //处理每一块，步骤如下：
                //1. 将A的上半部分(4X8子矩阵)转置并写入B的上半部分(4X8子矩阵)，其中前4X4位置正确，后4X4是用B暂时存放数据
                //2. 将A的左下部分(4X4子矩阵)按列转置写入B的右上部分(4X4子矩阵)，同时将驱逐出的数据按行写入B的左下部分(4X4子矩阵)
                //3. 将A的右下部分(4X4子矩阵)转置写入B的右下部分(4X4子矩阵)
                for (t = i; t < i + 4; t++) {
                    t1 = A[t][j]; t2 = A[t][j + 1];
                    t3 = A[t][j + 2]; t4 = A[t][j + 3];
                    t5 = A[t][j + 4]; t6 = A[t][j + 5];
                    t7 = A[t][j + 6]; t8 = A[t][j + 7];

                    B[j][t] = t1; B[j + 1][t] = t2;
                    B[j + 2][t] = t3; B[j + 3][t] = t4;
                    B[j][t + 4] = t5; B[j + 1][t + 4] = t6;
                    B[j + 2][t + 4] = t7; B[j + 3][t + 4] = t8;
                }
                for (t = 0; t < 4; t++) {
                    t1 = A[i + 4][j + t]; t2 = A[i + 5][j + t];
                    t3 = A[i + 6][j + t]; t4 = A[i + 7][j + t];

                    t5 = B[j + t][i + 4]; t6 = B[j + t][i + 5];
                    t7 = B[j + t][i + 6]; t8 = B[j + t][i + 7];

                    B[j + t][i + 4] = t1; B[j + t][i + 5] = t2;
                    B[j + t][i + 6] = t3; B[j + t][i + 7] = t4;

                    B[j + 4 + t][i] = t5; B[j + 4 + t][i + 1] = t6;
                    B[j + 4 + t][i + 2] = t7; B[j + 4 + t][i + 3] = t8;
                }
                for (t = i + 4; t < i + 8; t++) {
                    t5 = A[t][j + 4]; t6 = A[t][j + 5];
                    t7 = A[t][j + 6]; t8 = A[t][j + 7];
                    B[j + 4][t] = t5; B[j + 5][t] = t6;
                    B[j + 6][t] = t7; B[j + 7][t] = t8;
                }
            }
        }
    }

    //64X64矩阵
    else if (M == 60) {
        //分块，每8X8为一块，每块的处理同上面的64X64矩阵；边界部分另外处理
        for (j = 0; j < M; j += 8) {
            for (i = 0; i < N; i += 8) {
                //若满足8X8大块
                if (M - j >= 8 && N - i >= 8) {
                    for (t = i; t < i + 4; t++) {
                        t1 = A[t][j]; t2 = A[t][j + 1];
                        t3 = A[t][j + 2]; t4 = A[t][j + 3];
                        t5 = A[t][j + 4]; t6 = A[t][j + 5];
                        t7 = A[t][j + 6]; t8 = A[t][j + 7];

                        B[j][t] = t1; B[j + 1][t] = t2;
                        B[j + 2][t] = t3; B[j + 3][t] = t4;
                        B[j][t + 4] = t5; B[j + 1][t + 4] = t6;
                        B[j + 2][t + 4] = t7; B[j + 3][t + 4] = t8;
                    }
                    for (t = 0; t < 4; t++) {
                        t1 = A[i + 4][j + t]; t2 = A[i + 5][j + t];
                        t3 = A[i + 6][j + t]; t4 = A[i + 7][j + t];

                        t5 = B[j + t][i + 4]; t6 = B[j + t][i + 5];
                        t7 = B[j + t][i + 6]; t8 = B[j + t][i + 7];

                        B[j + t][i + 4] = t1; B[j + t][i + 5] = t2;
                        B[j + t][i + 6] = t3; B[j + t][i + 7] = t4;

                        B[j + 4 + t][i] = t5; B[j + 4 + t][i + 1] = t6;
                        B[j + 4 + t][i + 2] = t7; B[j + 4 + t][i + 3] = t8;
                    }
                    for (t = i + 4; t < i + 8; t++) {
                        t5 = A[t][j + 4]; t6 = A[t][j + 5];
                        t7 = A[t][j + 6]; t8 = A[t][j + 7];
                        B[j + 4][t] = t5; B[j + 5][t] = t6;
                        B[j + 6][t] = t7; B[j + 7][t] = t8;
                    }
                }
                //若为边界部分，此时余数只能为8或4，分情况处理，类似第一个32X32矩阵
                else {
                    for (t = i; t < i + 8 && t < N; t++) {
                        if (M - j >= 8) {
                            t8 = A[t][j + 7]; t7 = A[t][j + 6];
                            t6 = A[t][j + 5]; t5 = A[t][j + 4];
                        }
                        t4 = A[t][j + 3]; t3 = A[t][j + 2];
                        t2 = A[t][j + 1]; t1 = A[t][j];

                        if (M - j >= 8) {
                            B[j + 7][t] = t8; B[j + 6][t] = t7;
                            B[j + 5][t] = t6; B[j + 4][t] = t5;
                        }
                        B[j + 3][t] = t4; B[j + 2][t] = t3;
                        B[j + 1][t] = t2; B[j][t] = t1;
                    }
                }
            }
        }
    }
    //其他情况
    else {
        for (i = 0; i < N; i++) {
            for (j = 0; j < M; j++) {
                t = A[i][j];
                B[j][i] = t;
            }
        }
    }
    ENSURES(is_transpose(M, N, A, B));
}

/*
 * You can define additional transpose functions below. We've defined
 * a simple one below to help you get started.
 */

 /*
  * trans - A simple baseline transpose function, not optimized for the cache.
  */
char trans_desc[] = "Simple row-wise scan transpose";
void trans(int M, int N, int A[N][M], int B[M][N])
{
    int i, j, tmp;

    REQUIRES(M > 0);
    REQUIRES(N > 0);

    for (i = 0; i < N; i++) {
        for (j = 0; j < M; j++) {
            tmp = A[i][j];
            B[j][i] = tmp;
        }
    }

    ENSURES(is_transpose(M, N, A, B));
}

/*
 * registerFunctions - This function registers your transpose
 *     functions with the driver.  At runtime, the driver will
 *     evaluate each of the registered functions and summarize their
 *     performance. This is a handy way to experiment with different
 *     transpose strategies.
 */
void registerFunctions()
{
    /* Register your solution function */
    registerTransFunction(transpose_submit, transpose_submit_desc);

    /* Register any additional transpose functions */
    registerTransFunction(trans, trans_desc);

}

/*
 * is_transpose - This helper function checks if B is the transpose of
 *     A. You can check the correctness of your transpose by calling
 *     it before returning from the transpose function.
 */
int is_transpose(int M, int N, int A[N][M], int B[M][N])
{
    int i, j;

    for (i = 0; i < N; i++) {
        for (j = 0; j < M; ++j) {
            if (A[i][j] != B[j][i]) {
                return 0;
            }
        }
    }
    return 1;
}

