#include <stdio.h>

int main(int argc, char **argv){
    int min = 0;
    int max = 800;
    int x = 30;
    int res;

    res = 0;
    if(x >= min && x < max){
        res = 1;
    }

    return 0;
}