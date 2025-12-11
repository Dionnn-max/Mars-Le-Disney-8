DISNEY-8: A Magical Assembly Language

Overview
DISNEY-8 is a Disney themed assembly language extension for MARS LE that makes learning CPU architecture fun and engaging. This project implements a subset of the DISNEY-8 instruction set as a MARS LE extension in Java.

Features
- 4 Disney themed instructions implemented in Java
- Abstract base class architecture for extensibility
- 4 example assembly programs demonstrating usage
- Working test suite proving implementation correctness
- MARS ready structure with proper package organization

Implemented Instructions

Basic Instructions:
1. SPLASHMOUNTAIN - `Cd = Cs + Ct`
   - Addition with overflow detection (splash!)
   - Opcode: `0000`
   - Example: `SPLASHMOUNTAIN $c2, $c3, $c4`

2. SPACEMOUNTAIN - `Cd = Cs - Ct`
   - Subtraction with negative result handling
   - Opcode: `0001`
   - Example: `SPACEMOUNTAIN $c2, $c3, $c4`

Unique Instructions:
3. MICKEYTALE - `Cd = Cs + Ct + FASTPASS`
   - Magical addition with Disney "FASTPASS" bonus
   - Opcode: `1010`
   - Example: `MICKEYTALE $c2, $c3, $c4`

4. GOODNIGHTKISS - System halt
   - Graceful program exit with fireworks display
   - Opcode: `1111`
   - Example: `GOODNIGHTKISS`
  
DisneyInstruction.java is our blueprint, the rulebook that makes sure every Disney instruction has a magical name and clear purpose. From this foundation comes SplashMountain.java, which turns boring addition into a thrilling water ride where numbers splash together playfully. Next, SpaceMountain.java transforms scary subtraction into a space coaster adventure through positive and negative numbers. The real magic happens with MickeyTale.java, where we add Disney's secret FASTPASS bonus to normal math, showing coding can be creative. Finally, GoodNightKiss.java gives every program a fireworks finale, proving even routine computer tasks can end with joy. Together, they make learning to code feel like a Disney adventure!

How to run/test them in MARS LE: 

First, Take the 5 Java .class files and copy them into MARS's instruction folder. Think of it like giving MARS a new set of Disney themed tools to play with. Then test it : Open the terminal and run java -cp src disney.TestDisney. and then you willnsee all four instructions light up. For actual coding: Open MARS and try the example files. Each Disney instruction has its own secret code: SPLASHMOUNTAIN uses 0000 (it's the ADD water ride), SPACEMOUNTAIN uses 0001 (the SUB space coaster), MICKEYTALE is 1010 (the magical bonus track), and GOODNIGHTKISS is 1111 (the fireworks finale). Once everything's set up, you can write SPLASHMOUNTAIN instead of boring ADD—same math, way more fun! It's like speaking Disney's secret language to your computer. 




