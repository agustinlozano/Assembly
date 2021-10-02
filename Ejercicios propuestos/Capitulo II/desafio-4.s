# 4. Diseña un programa ensamblador que defina, en el espacio de datos, la siguiente
# cadena de caracteres: “Esto es un problema” utilizando
#   a) .ascii
#   b) .byte
#   c) .word

      .data
str1: .asciiz "Esto es "
str2: .byte 0x75, 0x6e, 0x20, 0x0   
str3: .word 0x70, 0x72, 0x6f, 0x62, 0x6c, 0x65, 0x6d, 0x61, 0x0

#str1 "Esto es"      <- asciiz
#str2 "un "          <- byte
#str3 "problema"     <- word