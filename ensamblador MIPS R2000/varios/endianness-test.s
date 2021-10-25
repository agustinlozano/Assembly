         .data
palabra: .word 0x10203040

          .text
main:     lw $t0, palabra($0)
          lb $t1, palabra($0)
          lb $t2, palabra+3($0)
          