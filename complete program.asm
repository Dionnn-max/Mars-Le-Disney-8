# complete_program.asm
# Complete Disney park calculation example

.data
  # Ride wait times
  peterpan:    .word 45
  space:       .word 75
  splash:      .word 30
  
  # Snack prices
  churro:      .word 6
  dolewhip:    .word 7
  
  # Results
  total_wait:  .word 0
  snack_cost:  .word 0
  budget:      .word 100
  remaining:   .word 0

.text
  # DISNEY-8 program concept:
  
  # Calculate total wait time
  # PIRATESOFCARIBBEAN $c1, peterpan
  # PIRATESOFCARIBBEAN $c2, space
  # PIRATESOFCARIBBEAN $c3, splash
  # SPLASHMOUNTAIN $c4, $c1, $c2    # 45 + 75
  # SPLASHMOUNTAIN $c5, $c4, $c3    # + 30 = 150
  # HAUNTEDMANSION $c5, total_wait
  
  # Calculate snack cost with magic
  # PIRATESOFCARIBBEAN $c6, churro
  # PIRATESOFCARIBBEAN $c7, dolewhip
  # MICKEYTALE $c8, $c6, $c7        # Add FASTPASS magic
  # HAUNTEDMANSION $c8, snack_cost
  
  # Check budget
  # PIRATESOFCARIBBEAN $c9, budget
  # SPACEMOUNTAIN $c10, $c9, $c8    # Remaining = 100 - snack_cost
  # HAUNTEDMANSION $c10, remaining
  
  # GOODNIGHTKISS
  
  # MIPS equivalent:
  main:
    # Wait time calculation
    lw $t0, peterpan
    lw $t1, space
    lw $t2, splash
    add $t3, $t0, $t1
    add $t3, $t3, $t2
    sw $t3, total_wait
    
    # Snack cost with "magic"
    lw $t4, churro
    lw $t5, dolewhip
    li $t6, 5           # Simulated FASTPASS magic
    add $t7, $t4, $t5
    add $t7, $t7, $t6   # Like MICKEYTALE
    sw $t7, snack_cost
    
    # Budget check
    lw $t8, budget
    sub $t9, $t8, $t7   # Like SPACEMOUNTAIN
    sw $t9, remaining
    
    li $v0, 10
    syscall