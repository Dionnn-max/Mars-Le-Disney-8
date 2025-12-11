# control_flow.asm
# Shows branching with Disney theme

.data
  counter: .word 0
  limit: .word 5

.text
  # DISNEY-8 concept loop:
  # loop:
  #   PIRATESOFCARIBBEAN $c1, counter
  #   PIRATESOFCARIBBEAN $c2, limit
  #   SPLASHMOUNTAIN $c3, $c1, 1     # Increment counter
  #   HAUNTEDMANSION $c3, counter
  #   JUNGLE_CRUISE $c3, $c2, done   # Branch if counter == limit
  #   MAGICCARPET loop               # Jump back
  # done:
  #   GOODNIGHTKISS
  
  # MIPS equivalent:
  main:
    lw $t0, counter
    lw $t1, limit
  loop:
    add $t0, $t0, 1
    sw $t0, counter
    bne $t0, $t1, loop   # Like JUNGLE_CRUISE
  done:
    li $v0, 10
    syscall