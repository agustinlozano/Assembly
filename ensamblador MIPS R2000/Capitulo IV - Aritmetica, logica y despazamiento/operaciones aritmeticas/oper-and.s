        .data
numero: .word 0x01234567
        .space 4

        .text
main:   lw   $t0, numero($0)
        and  $t1, $t0, 0xfffe       # 0xfffe es en binario:
                                    # 1111 1111 1111 1110
        sw   $t1, numero+4($0)