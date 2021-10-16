                .data
vector:         .word   2, -4, -6
        
                .data   10010010
res:            .space  3

                .text
main:           lw      $t7, vector($0)
                lw      $t8, vector+4($0)
                lw      $t9, vector+8($0)
                
                ori		$t0, $0, 0
                ori		$t1, $0, 0
                ori		$t2, $0, 0

                sge     $t0, $t7, $0
                sge     $t1, $t8, $0
                sge     $t2, $t9, $0

                and     $t0, $t0, $t1
                and     $t0, $t0, $t3
                
                bgez    $t0, valorfinal

valorfinal:     sb      $t0, res($0)
