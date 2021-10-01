# Sintaxis instruccion: lw rt , Inm(rs)
         .data
palabra: .word 0x10203040

         .text
main:    lw $s0, palabra($0) 