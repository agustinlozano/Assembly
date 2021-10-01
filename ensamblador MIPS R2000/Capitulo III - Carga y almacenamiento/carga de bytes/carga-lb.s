        .data
octeto: .byte 0xf3
otro:   .byte 0x20

        .text
main:   lb $s0, octeto($0)
        lb $s1, otro($0)