# basic_arithmetic.asm
# Tests basic DISNEY-8 arithmetic instructions

.data
  x: .word 10
  y: .word 20
  sum: .word 0
  diff: .word 0

.text
  # DISNEY-8 assembly (conceptual - would need assembler)
  
  # Load values
  # PIRATESOFCARIBBEAN $c1, x    # Load x into C1
  # PIRATESOFCARIBBEAN $c2, y    # Load y into C2
  
  # Addition
  # SPLASHMOUNTAIN $c3, $c1, $c2  # C3 = 10 + 20 = 30
  # HAUNTEDMANSION $c3, sum       # Store result
  
  # Subtraction  
  # SPACEMOUNTAIN $c4, $c2, $c1   # C4 = 20 - 10 = 10
  # HAUNTEDMANSION $c4, diff      # Store result
  
  # End
  # GOODNIGHTKISS                 # Exit program
  
  # MIPS equivalent for testing:
  main:
    lw $t0, x
    lw $t1, y
    add $t2, $t0, $t1    # Like SPLASHMOUNTAIN
    sw $t2, sum
    sub $t3, $t1, $t0    # Like SPACEMOUNTAIN
    sw $t3, diff
    li $v0, 10           # Like GOODNIGHTKISS
    syscall