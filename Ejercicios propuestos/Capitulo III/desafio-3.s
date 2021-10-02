# Desarrolla un programa ensamblador que dada la siguiente palabra,
# 0x1020 3040, almacenada en una determinada posicion de memoria, la reorganice
# en otra posicion invirtiendo el orden de sus bytes.

                  .data
palabra:          .word 0x10203040
                  
                  .data 0x10010010
byte1:            .space 1
byte2:            .space 1
byte3:            .space 1
byte4:            .space 1
         
                  .text
main:             lb $s0, palabra($0)
                  lb $s1, palabra+1($0)
                  lb $s2, palabra+2($0)
                  lb $s3, palabra+3($0)

                  sb $s0, byte4($0)
                  sb $s1, byte3($0)
                  sb $s2, byte2($0)
                  sb $s3, byte1($0)