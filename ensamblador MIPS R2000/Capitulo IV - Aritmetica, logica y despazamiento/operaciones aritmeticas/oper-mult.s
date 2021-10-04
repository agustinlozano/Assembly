         .data
numero1: .word  0x7fffffff          # max positivo representable en Ca2(32)
numero2: .word  16
         .space 8 

         .text
main:    lw     $t0, numero1($0)
         lw     $t1, numero2($0)
         mult   $t0, $t1            # HI, LO         <- $t0 * $t1
         mfhi   $t0                 # $t0            <- H1
         mflo   $t1                 # $t1            <- LO
         sw     $t0, numero2+4($0)  # M[numero2 + 4] <- $t0
         sw     $t1, numero2+8($0)  # M[numero2 + 8] <- $t1