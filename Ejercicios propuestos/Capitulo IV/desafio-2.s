           .data 0x10000000
numero1:   .word 18
numero2:   .word -1215
numero3:   .word 5

           .data 0x10010000
resultado: .space 4

.text
main:      lw $t0, numero1($0)
           lw $t1, numero2($0)
           lw $t2, numero3($0)
           
           div $t0, $t2
           mflo $t6
           sw $t6, resultado($0)

           div $t1, $t2
           mflo $t6
           sw $t6, resultado+4($0)
