# Desarrolla un programa ensamblador que inicialice cuatro bytes a partir
# de la posicion 0x1001 0002 con los valores 0x10, 0x20, 0x30, 0x40
# y reserve espacio para una palabra a partir de la direccion 0x1001 0010. El
# programa debe transferir los cuatro bytes contenidos a partir de la posicion
# 0x1001 0002 a la direccion 0x1001 0010.

         .data 0x10010002
byte1:   .byte 0x10
byte2:   .byte 0x20
byte3:   .byte 0x30
byte4:   .byte 0x40

         .data 0x10010010
palabra: .space 4

         .text
main:    lb $s0, byte1($0)
         lb $s1, byte2($0)
         lb $s2, byte3($0)
         lb $s3, byte4($0)

         sb $s0, palabra($0)
         sb $s1, palabra+1($0)
         sb $s2, palabra+2($0)
         sb $s3, palabra+3($0)
