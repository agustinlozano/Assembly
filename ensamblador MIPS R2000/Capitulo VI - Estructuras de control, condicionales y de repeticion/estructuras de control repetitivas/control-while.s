             .data
cadena:      .asciiz "hola como estas?"
             .align  2
n:           .space  4

             .text
main:        andi $t0, $t0, 0               # inicializo a $t0 en cero

mientras:    lb   $t1, cadena($t0)          # $t1 <- cadena[$t0] con $t0 de indice
             beq  $t1, $0, finmientras
             addi $t0, $t0, 1
             j    mientras                  # j salta a la etiqueta del mientras

finmientras: sw   $t0, n($0)                # $t0 almacena la cantidad de caracteres