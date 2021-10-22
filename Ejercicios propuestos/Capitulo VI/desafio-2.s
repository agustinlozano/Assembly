# 142.- Desarrolla un programa en ensamblador que dado un vector de enteros,
# obtenga como resultado cuántos elementos son iguales a cero. Este resultado
# se debe almacenar en una variable llamada <total>. El programa deberá
# inicializar los elementos del vector, en memoria, ası́ como una variable, 
# <length>,que almacenará el número de elementos que tiene el vector.

            .data
vector:     .word  19, 33, 0, 69, 45, 0, 97, 0
length:     .word  32
total:      .space 4

            .text
main:       lw   $t2, length($0)      #cargo la long
            and  $t0, $t0, $0         #inicializo el indice
        
while:      lw   $t1, vector($t0)     #inicio bucle
            beq  $t0, $t2, endwhile   #condicion de salida
            
            beq  $t1, $0, contar
            addi $t0, 4
            j	 while                #jump to while
            
contar:     addi $t7, 1               #aumentar contador de ceros
            addi $t0, 4               #aumentar la variable indice
            bne  $t0, $t2, while      #control sobre el flujo

endwhile:   sw   $t7, total($0)
