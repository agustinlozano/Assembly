          .data
dato1:    .word  1
dato2:    .word  3
dato3:    .word  5
dato4:    .word  4
res1:     .space 4
res2:     .space 4

          .text
# Programa invocador
main:     la  $a0, dato1
          la  $a1, dato2
          la  $a2, res1

primera:  jal suma
          la  $a0, dato3
          la  $a1, dato4
          la  $a2, res2

segunda:  jal suma

          li  $v0, 10
          syscall

# Subrutina
suma:     lw  $t0, 0($a0)
          lw  $t1, 0($a1)
          add $v0, $t0, $t1
          sw  $v0, 0($a2)
          jr  $ra
