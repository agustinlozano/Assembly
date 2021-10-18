        .data
vector: .word  -1, -4, -5, -2
res:    .space  1

        .text
main:   lw  $t4, vector($0)
        lw  $t5, vector+4($0)
        lw  $t6, vector+8($0)
        lw  $t7, vector+12($0)

        ori $t0, $t0, 0
        ori $t1, $t0, 0
        ori $t2, $t0, 0
        ori $t3, $t0, 0

        slt $t0, $t4, $0
        slt $t1, $t5, $0
        slt $t2, $t6, $0
        slt $t3, $t7, $0

        and $t0, $t0, $t1
        and $t0, $t0, $t2
        and $t0, $t0, $t3

        sb  $t0, res($0)
