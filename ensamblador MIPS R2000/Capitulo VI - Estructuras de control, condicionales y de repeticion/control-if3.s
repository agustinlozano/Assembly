# if(dato1 >= dato2){ dato1 - dato2 }else{ dato2 - dato1 }

       .data
dato1: .word 30
dato2: .word 25
res:   .space 4

       .text
main:  lw  $t1, dato1($0)
       lw  $t2, dato2($0)
if:    bge $t1, $t2, then

else:  sub $t3, $t2, $t1
       j   endif

then:  sub $t3, $t1, $t2

endif: sw  $t3, res($0)