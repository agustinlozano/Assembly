                .data
vector:         .word   2, -4, 5
        
res:            .space  3

                .text
main:           lw      $t5, vector($0)
                lw      $t6, vector+4($0)
                lw      $t7, vector+8($0)
                
                ori		$t0, $0, 0
                ori		$t1, $0, 0
                ori		$t2, $0, 0

                sge     $t0, $t5, $0
                sge     $t1, $t6, $0
                sge     $t2, $t7, $0

                sb      $t0, res($0)
                sb      $t1, res+1($0)
                sb      $t2, res+2($0)
