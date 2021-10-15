        .data
numero: .word 0xffffff41

        .text
main:   lw   $t0, numero($0)
        sra  $t1, $t0, 4          # $t1 <- $t0 >> 4

# Registros:
# -------------------
# R8  [t0] = ffffff41
# R9  [t1] = fffffff4
# -------------------
