          .data
dato1:    .word  40
dato2:    .word  30
res:      .space 4

          .text
main:     lw   $t1, dato1($0)
          lw   $t2, dato2($0)
          and  $t0, $0, $0
       
si:       beq  $t2, $0, finsi
entonces: div  $t1, $t2
          mflo $t0
finsi:    sw   $t0, res($0)
