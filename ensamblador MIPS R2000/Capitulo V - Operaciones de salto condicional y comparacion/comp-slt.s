       .data
dato1: .word 30
dato2: .word 40
res:   .space 1

       .text
main:  lw $t0, dato1($0)
       lw $t1, dato2($0)
       slt $t2, $t0, $t1
       sb $t2, res($0)
