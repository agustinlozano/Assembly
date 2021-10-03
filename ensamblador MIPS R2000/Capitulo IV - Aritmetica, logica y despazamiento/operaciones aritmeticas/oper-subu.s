         .data
numero1: .word -2147483648      # max negativo representable en Ca2(32)
                                # en hexa 0x80000000
numero2: .word 1
numero3: .word 2

         .text
main:    lw    $t0, numero1($0)
         lw    $t1, numero2($0)
         subu  $t0, $t0, $t1       # $t0 <- $t0 - $t1
         lw    $t1, numero3($0)
         subu  $t0, $t0, $t1       # $t0 <- $t0 - $t1
         sw	   $t0, numero3($0) 

# comienza el progrma

# declaro una palabra con -> -2147483648
# declaro una palabra -> 1
# declaro una palabra -> 2

# cargo el continido en la posicion de memoria: numero1 - en -> $t0
# cargo el contenido en la posicion de memoria: numero2 - en -> $t1

# hago la resta sin signo: $t0 <- $t0 - $t1
#                     7fffffff <- 80000000 - 1  

# cargo el contenido en la posicion de memoria: numero3 - en -> $t1

# hago la resta con signo: $t0 <- $t0 - $t1
#                     7ffffffd <- 7fffffff - 2

# almaceno el contenido del registro $t0 en la posicion de memoria de: numero3