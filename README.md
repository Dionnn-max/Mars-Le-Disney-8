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

