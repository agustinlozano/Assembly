      .text
main: li   $t0, 10
      li   $t1, 13
    
      #apila
      addi $sp, $sp, -4
      sw   $t0, 0($sp)
      sw   $t1, 4($sp)
      
      #desapilar
      lw   $t1, 4($sp)
      addi $sp, $sp, 4
