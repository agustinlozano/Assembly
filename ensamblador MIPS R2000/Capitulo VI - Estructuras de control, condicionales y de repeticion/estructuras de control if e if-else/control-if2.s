.data
min:      .word  0
max:      .word  800
x:        .word  30
res:      .space 4

.text
main:     lw     $t1, min($0)
          lw     $t2, max($0)
          lw     $t3, x($0)
          
          and    $t0, $0, $0

si:       blt    $t3, $t1, finsi
          bge    $t3, $t2, finsi

entoces:  ori    $t0, $0, 1
finsi:    sw     $t0, res($0)
