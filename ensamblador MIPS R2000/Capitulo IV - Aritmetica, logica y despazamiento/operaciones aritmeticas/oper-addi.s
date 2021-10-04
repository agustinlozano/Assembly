        .data
numero: .word 2147483647       # max positivo representable en Ca2(32)
                               # (en hexa 0x7fff ffff

        .text
main:   lw    $t0, numero($0)
        addi  $t1, $t0, 1       # $t1 <- $t0 + 1
                                # $t1 = 0x7fffffff

# No realizo la suma correctamente porque la cifra a representar
# estaba fuera del rango de los enteros positivos con signo representables