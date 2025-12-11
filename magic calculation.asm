# magic_calculation.asm
# Shows MICKEYTALE's magical addition

.data
  base1: .word 100
  base2: .word 50
  magic_result: .word 0
  fastpass_val: .word 25    # Simulated FASTPASS value

.text
  # DISNEY-8 concept:
  # PIRATESOFCARIBBEAN $c1, base1
  # PIRATESOFCARIBBEAN $c2, base2
  # PIRATESOFCARIBBEAN $f0, fastpass_val  # Load FASTPASS
  # MICKEYTALE $c3, $c1, $c2             # C3 = 100 + 50 + 25 = 175
  # HAUNTEDMANSION $c3, magic_result
  # GOODNIGHTKISS
  
  # MIPS equivalent:
  main:
    lw $t0, base1
    lw $t1, base2
    lw $t4, fastpass_val      # FASTPASS value
    add $t2, $t0, $t1         # Regular add
    add $t2, $t2, $t4         # Add FASTPASS (like MICKEYTALE)
    sw $t2, magic_result
    li $v0, 10
    syscall