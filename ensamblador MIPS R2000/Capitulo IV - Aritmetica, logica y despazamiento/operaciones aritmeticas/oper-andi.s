        .data
numero: .word 0x01234567
        .space 4

        .text
main:   lw   $t0, numero($0)
        andi $t1, $t0, 0xfffe       # 0xfffe es en binario:
                                    # 1111 1111 1111 1110
        sw   $t1, numero+4($0)

# User data segment [10000000]..[10040000]
# [10000000]..[1000ffff]  00000000
# [10010000]    01234567  00004566  00000000  00000000    g E # . f E . . . . . . . . . . 
# [10010010]..[1003ffff]  00000000
