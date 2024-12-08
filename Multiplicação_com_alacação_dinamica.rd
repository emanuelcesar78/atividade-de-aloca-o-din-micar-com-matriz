#include <stdio.h>
#include <stdlib.h>
#include <time.h>

void matriz_multiplicacao(int *p,int *m, int coluna , int linha )
{
    int receptor [3][3];
    for (int i = 0 ; i< 3; i++)
        {
            for (int l =0; l < 3; l++)
                {
                    receptor[i][l] = p[l*coluna+i] * m [l*coluna+i];
                }
        }
    for (int i = 0; i < 3 ;i++)
        {
            for (int l = 0; l< 3; l++)
                {
                    printf("%d ",receptor[i][l]);
                }
            printf("\n");
        }

}

int main()
{
    srand(time (0));
    int *p, numero = 3, num = 3 ;

    p = (int *)malloc(num*numero*sizeof(int));

    if ( p == NULL)
        {
            printf("Algo deu errado");
            return 0;
        }
    for(int i=0 ; i<numero * num; i++)
        {
            p[i] = rand()%10;
        }
    int *matriz_dois;

    matriz_dois = (int*)malloc(num*numero*sizeof(int));

    if (matriz_dois== NULL)
        {
            printf("algo deu errado");
            return 0;
        }
    for (int i =0 ; i < numero * num ; i++)
        {
            matriz_dois[i] = rand() % 10;
        }
        printf("\nMatriz 1\n");
    for (int i = 0; i < 3 ;i++)
        {
            for (int l = 0; l< 3; l++)
                {
                    printf("%d ",p[i*numero+l]);
                }
            printf("\n");
        }

        printf("\nMatriz 2\n");
    for (int i = 0; i < 3 ;i++)
        {
            for (int l = 0; l< 3; l++)
                {
                    printf("%d ",matriz_dois[i*numero+l]);
                }
            printf("\n");
        }
    printf("\nMatriz 3\n");

    matriz_multiplicacao(p,matriz_dois,num,numero);
    free(p);
    free(matriz_dois);
    return 0;
}
