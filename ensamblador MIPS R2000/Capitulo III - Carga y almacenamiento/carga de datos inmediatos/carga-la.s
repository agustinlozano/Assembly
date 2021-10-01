          .data
palabra1: .word 0x10
palabra2: .word 0x20

          .text
main:     la $s0, palabra1
          la $s1, palabra2
          la $s2, 0x10010004