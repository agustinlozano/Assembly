          .data
dato1:    .word -30
dato2:    .word  59
res:      .space 1

          .text
main:     lw $t8, dato1($0)
          lw $t9, dato2($0)

          bne $t8, $t9, notIqual   #Brach if Not Equal
          and $t0, $t0, $0         #inizializa a cero el registro
          and $t1, $t1, $0         #inizializa a cero el registro

notIqual: ori $t0, $0, 1
          sle $t1, $t8, $t9        #Set if Less than or Equal
fineval:  and $t0, $t0, $t1
          sb $t0, res($0)