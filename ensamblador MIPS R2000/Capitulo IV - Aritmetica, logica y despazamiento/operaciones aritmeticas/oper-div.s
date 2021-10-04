.data
numero1: .word 10
numero2: .word 3
         .space 8

.text
main:    lw   $t0, numero1($0)
         lw   $t1, numero2($0)
         div  $t0, $t1
         mfhi $t2
         mflo $t3
         sw   $t3, numero2+4($0)
         sw   $t2, numero2+8($0)
