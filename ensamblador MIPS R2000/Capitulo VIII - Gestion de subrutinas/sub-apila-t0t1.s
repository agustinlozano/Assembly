      .text
main: li   $t0, 10
      li   $t1, 13
      
      addi $sp, $sp, -4
      sw   $t0, 0($sp)

      addi $sp, $sp, -4
      sw   $t1, 0($sp)
