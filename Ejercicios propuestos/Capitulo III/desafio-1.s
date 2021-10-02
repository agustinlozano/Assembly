# Desarrolla un programa ensamblador que inicialice un vector de enteros,
# V , definido como V = (10, 20, 25, 500, 3). El vector debe comenzar en la
# direccion de memoria 0x1000 0000. El programa debe cargar los elementos
# de dicho vector en los registros $s0 al $s4.

         .data 0x10000000
entero1: .word 10
entero2: .word 20
entero3: .word 25
entero4: .word 500
entero5: .word 3

      .text
main: lw $s0 entero1
      lw $s1 entero2
      lw $s2 entero3
      lw $s3 entero4
      lw $s4 entero5
