          .data
dato1:    .word 1
dato2:    .word 3
dato3:    .word 5
dato4:    .word 4
res1:     .space 4
res2:     .space 4

          .text
# Programa invocador
main:     lw  $a0, dato1($0)
          lw  $a1, dato2($0)

primera:  jal suma
          sw  $v0, res1($0)
          lw  $a0, dato3($0)
          lw  $a1, dato4($0)
segunda:  jal suma
          sw  $v0, res2($0)

          li $v0, 10            # Finalizar la ejecucion del programa
          syscall

# Subrutina
suma:     add $v0, $a0, $a1
          jr  $ra