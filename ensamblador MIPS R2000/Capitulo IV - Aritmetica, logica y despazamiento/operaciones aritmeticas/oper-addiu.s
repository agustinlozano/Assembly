        .data
numero: .word 2147483647       # max positivo representable en Ca2(32)
                               # (en hexa 0x7fff ffff

        .text
main:   lw    $t0, numero($0)
        addiu $t1, $t0, 1       # $t1 <- $t0 + 1
                                # $t1 = 0x80000000