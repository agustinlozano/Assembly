# 1. Diseña un programa ensamblador que reserva espacio para dos vectores A y B de
# 20 palabras cada uno a partir de la dirección 0x10000000.

    .data 0x10000000
vectorA: .space 80
vectorB: .space 80  