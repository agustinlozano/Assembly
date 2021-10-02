# Desarrolla un programa ensamblador que dada la siguiente palabra,
# 0x1020 3040, almacenada en una determinada posicion de memoria, la reorganice
# en la misma posicion intercambiando el orden de sus medias palabras.
# (Nota: las instrucciones ((lh)) (del ingles load half ) y ((sh)) (del ingles save
# half ) cargan y almacenan medias palabras, respectivamente).

         .data
palabra: .word 0x10203040

         .text        
main:    lh $s0, palabra($0)
         lh $s1, palabra+2($0)

         sh $s0, palabra+2($0)
         sh $s1, palabra($0)