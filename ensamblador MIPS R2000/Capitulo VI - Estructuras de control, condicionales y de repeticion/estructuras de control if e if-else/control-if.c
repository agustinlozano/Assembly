#include <stdio.h>

int main(int argc, char **argv){
    int dato1 = 40;
    int dato2 = 30;
    int res;

    res = 0;
    if(dato2 != 0){
        res = dato1/dato2;
    }

    printf("El valor de la division entera es: %d\n", res);

    return 0;
}