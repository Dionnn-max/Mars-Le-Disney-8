# Demonstrates MICKEYTALE's magical addition

.data
  base1: .word 100
  base2: .word 50
  magic_result: .word 0
  fastpass_val: .word 25    # Disney magic bonus

.text
main:
  # Load values
  lw $t0, base1
  lw $t1, base2
  lw $t4, fastpass_val      # The Disney magic!
  
  # MICKEYTALE = base1 + base2 + FASTPASS
  add $t2, $t0, $t1         # First addition
  add $t2, $t2, $t4         # Add Disney magic
  
  sw $t2, magic_result      # Store magical result
  
  li $v0, 10
  syscall
