        .data
octeto: .word 0x10203040
otro:   .byte 0x20

        .text
main:   lb $s0, octeto($0)
        lb $s1, otro($0)


# registro -> $s0 contiene: 0x40 -> el byte menos significativo de octeto
# registro -> $s1 contiene: 0x20 -> el byte correspondiente a 0x20

# Esto es porque estamos usando la instruccion lb que sirve para almacenar
# bytes en el registro