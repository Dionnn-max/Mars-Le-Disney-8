# Disney park calculation

.data
  peterpan:    .word 45
  space:       .word 75
  splash:      .word 30
  churro:      .word 6
  dolewhip:    .word 7
  total_wait:  .word 0
  snack_cost:  .word 0
  budget:      .word 100
  remaining:   .word 0

.text
  main:
    # Calculate total wait time (SPLASHMOUNTAIN)
    lw $t0, peterpan
    lw $t1, space
    lw $t2, splash
    add $t3, $t0, $t1
    add $t3, $t3, $t2
    sw $t3, total_wait
    
    # Calculate snack cost (MICKEYTALE)
    lw $t4, churro
    lw $t5, dolewhip
    li $t6, 5           # Disney magic bonus
    add $t7, $t4, $t5
    add $t7, $t7, $t6
    sw $t7, snack_cost
    
    # Check budget (SPACEMOUNTAIN)
    lw $t8, budget
    sub $t9, $t8, $t7
    sw $t9, remaining
    
    li $v0, 10          # GOODNIGHTKISS
    syscall
