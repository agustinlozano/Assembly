        .data
min1:   .word 2
max1:   .word 10

min2:   .word 50
max2:   .word 70

num:    .word 5
res:    .space 4

# if((34 >= 2 & 34 <= 10) | (34 >= min2 & 34 <= max2))

        .text
main:   lw   $t3, num($0)
        lw   $t4, min1($0)
        lw   $t5, max1($0)
        lw   $t6, min2($0)
        lw   $t7, max2($0)

        and  $t0, $t0, $0
        and  $t1, $t1, $0

si:     sge  $t0, $t3, $t4   
        sle  $t1, $t3, $t5
        
        and  $t0, $t0, $t1
        bne  $t0, $0, fin

oEsto:  sge  $t0, $t3, $t6   
        sle  $t1, $t3, $t7

        and  $t0, $t0, $t1

fin:    sw   $t0, res($0)