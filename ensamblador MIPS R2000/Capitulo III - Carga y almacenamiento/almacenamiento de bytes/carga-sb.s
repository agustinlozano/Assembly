.data
palabra: .word 0x10203040
octeto:  .space 2

.text
main: lw $s0, palabra($0)
      sb $s0, octeto($0)

# comienza el programa

# declaro una palabra con -> 0x10203040
# reservo espacio para 2bytes

# cargo el contenido de la direccion de memoria: palabra en -> $s0
# almaceno el byte menos significativo de palabra -> 40 en el espacio reservado

# fin del programa
