# 5. Sabiendo que un entero se almacena en un word, diseña un programa ensamblador
# que defina en la memoria de datos la matriz A de enteros definida como
#
#           (1 2 3)         A partir de la direccion 0x10010000 suponiendo que:
#       A = (4 5 6)         1) La matriz A se almacena por filas
#           (7 8 9)         2) La matriz A se almacena por columnas


# 1)
      .data
row1: .word 0x1, 0x2, 0x3
      .data 0x10010010
row2: .word 0x4, 0x5, 0x6
      .data 0x10010020
row3: .word 0x7, 0x8, 0x9

# 2)
      .data 0x10010030
row4: .word 0x1, 0x4, 0x7
      .data 0x10010040
row5: .word 0x2, 0x5, 0x8
      .data 0x10010050
row6: .word 0x3, 0x6, 0x9

# [10000000]..[1000ffff]  00000000
# [10010000]    00000001  00000002  00000003  00000000    . . . . . . . . . . . . . . . . 
# [10010010]    00000004  00000005  00000006  00000000    . . . . . . . . . . . . . . . . 
# [10010020]    00000007  00000008  00000009  00000000    . . . . . . . . . . . . . . . . 
# [10010030]    00000001  00000002  00000003  00000004    . . . . . . . . . . . . . . . . 
# [10010040]    00000005  00000006  00000007  00000008    . . . . . . . . . . . . . . . . 
# [10010050]    00000009  00000000  00000000  00000000    . . . . . . . . . . . . . . . . 
# [10010060]..[1003ffff]  00000000