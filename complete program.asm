
# Disney Day Planner: Shows all DISNEY-8 concepts

.data
  peterpan:    .word 45    # Wait time
  space:       .word 75    # Wait time
  splash:      .word 30    # Wait time
  churro:      .word 6     # Snack price
  dolewhip:    .word 7     # Snack price
  total_wait:  .word 0     # Result: total minutes
  snack_cost:  .word 0     # Result: total cost
  budget:      .word 100   # Starting money
  remaining:   .word 0     # Result: money left

.text
main:
  # Calculate total wait time (like SPLASHMOUNTAIN)
  lw $t0, peterpan
  lw $t1, space
  lw $t2, splash
  add $t3, $t0, $t1        # First addition
  add $t3, $t3, $t2        # Second addition
  sw $t3, total_wait       # Store total
  
  # Calculate snack cost with Disney magic (like MICKEYTALE)
  lw $t4, churro
  lw $t5, dolewhip
  li $t6, 5                # Disney FASTPASS magic!
  add $t7, $t4, $t5        # Basic snack cost
  add $t7, $t7, $t6        # Add magic bonus
  sw $t7, snack_cost       # Store magical cost
  
  # Check budget (like SPACEMOUNTAIN)
  lw $t8, budget
  sub $t9, $t8, $t7        # Subtract cost from budget
  sw $t9, remaining        # Store money left
  
  li $v0, 10               # GOODNIGHTKISS: end program
  syscall
