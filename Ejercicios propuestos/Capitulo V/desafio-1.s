        .data
vector: .byte  0, 1, 1, 1, 0
        .data 0x10010010
res:    .space 3

        .text
main:   lb  $t8, vector($0)
        lb  $t9, vector+4($0)
        and $t0, $t8, $t9
        sb  $t0, res($0)

        lb  $t8, vector+1($0)
        lb  $t9, vector+3($0)
        or  $t0, $t8, $t9
        sb  $t0, res+1($0)

        lb  $t8, vector($0)
        lb  $t0, vector+3($0)
        lb  $t1, vector+2($0)
        or  $t0, $t8, $t9
        and $t0, $t0, $t1
        sb  $t0, res+2($0)
             