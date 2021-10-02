# Amplia el anterior programa para que ademas copie a memoria el
# vector V comenzando en la direccion 0x1001 0000. (Pista: En un programa
# ensamblador se pueden utilizar tantas directivas del tipo (( .data )) como sean
# necesarias.)

            .data 0x10000000
entero1:    .word 10
entero2:    .word 20
entero3:    .word 25
entero4:    .word 500
entero5:    .word 3

            .data 0x10010000
enterocpy1: .space 4
enterocpy2: .space 4
enterocpy3: .space 4
enterocpy4: .space 4
enterocpy5: .space 4

            .text
main:       lw $s0 entero1
            lw $s1 entero2
            lw $s2 entero3
            lw $s3 entero4
            lw $s4 entero5

            sw $s0 enterocpy1($0)
            sw $s1 enterocpy2($0)
            sw $s2 enterocpy3($0)
            sw $s3 enterocpy4($0)
            sw $s4 enterocpy5($0)