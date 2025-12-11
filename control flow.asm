# Shows loops using Disney-themed concepts

.data
  counter: .word 0
  limit: .word 5

.text
main:
  lw $t0, counter
  lw $t1, limit
  
loop:
  add $t0, $t0, 1          # Like SPLASHMOUNTAIN with 1
  sw $t0, counter
  
  bne $t0, $t1, loop       # JUNGLE_CRUISE: keep going if not at limit
  
  # When counter == limit, we're done!
  li $v0, 10               # GOODNIGHTKISS
  syscall
