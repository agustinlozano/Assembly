          .data
dato1:    .word  40
dato2:    .word -50
res:      .space 1

          .text
main:     lw $t8, dato1($0)
          lw $t9, dato2($0)

          bne $t8, $0, noteq
          and $t0, $t0, $0

noteq:    ori $t0, $0, 1
          bne $t9, $0, fineval
          and $t1, $t1, $0

fineval:  ori $t1, $0, 1
          and $t2, $t0, $t1
          sb $t2, res($0)

# if(dato1 != 0 & dato2 != 0) -> verdadero
