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

          # Subrutina
suma:     add $v0, $a0, $a1
          jr  $ra

# Esta version del programa recae en un bucle infinito
# ya que como veremos en la version v3, debemos agregar
# dos instrucciones mas para indicar que el programa ha
# finalizado una vez llegado al final del segundo llamado