         .data
numero1: .word 0xabcd12bd
numero2: .word 0x0bcd02bd

         .text
main:    lw $t0, numero1($0)
         lw $t1, numero2($0)
         and $t3, $t0, $t1
         sw $t3, numero1($0)

# Preguntar por este ejercicio