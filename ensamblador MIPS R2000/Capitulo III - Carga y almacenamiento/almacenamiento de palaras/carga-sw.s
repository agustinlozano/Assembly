          .data
palabra1: .word 0x10203040
palabra2: .space 4
palabra3: .word 0xffffffff

           .text
main:      lw $s0, palabra1($0)
           sw $s0, palabra2($0)
           sw $s0, palabra3($0)

# comienza el programa
 
# declara una paalabra con -> 0x10203040
# reserva un espacio de 4bytes -> 00000000
# declara una palabra con -> 0xffffffff

# carga la palabra con direccion -> palabra1 en el registro $s0
# almacena (pisa) el contenido de $s0 en -> palabra2
# almacena (pisa) el contenido de $s0 en -> palabra3

# resultado en data segment
# [10010000]    10203040  10203040  10203040  00000000

# fin del programa