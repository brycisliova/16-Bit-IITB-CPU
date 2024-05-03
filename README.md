# 16-Bit-IITB-CPU
[The project topic involved extensive pen paper design of a Finite state
machine entity to process numerical data provided to it 16-bit registers.
Operations on the data were primarily divided in 3 categories namely Logical
and Arithmetic operations, Data Access/Storage operations and
Conditional/Unconditional Branch operations.]

Architecture
IITB-CPU is a 16-bit very simple computer developed for the teaching that is based on the Little
Computer Architecture. The IITB-CPU is an 8-register, 16-bit computer system. It has 8 general-purpose
registers (R0 to R7). Register R7 is always stores Program Counter. PC points to the next instruction. All
addresses are short word addresses (i.e., address 0 corresponds to the first two bytes of main memory,
address 1 corresponds to the second two bytes of main memory, etc.). This architecture uses condition
code register which has two flags Carry flag (c) and Zero flag (z). The IITB-CPU is very simple, but it is
general enough to solve complex problems. There are three machine-code instruction formats (R, I, and
J type) and a total of 14 instructions.

Instruction Set Architecture
Information for the 14 instructions supported by the IITB-CPU and their encoding can be found in the Problem Statement.

Simulation
Simulation and testing of IIT-B CPU was performed and it was observed that the CPU efficiently uses all the components to process the given instructions. The states were made using the state diagram. The states were executed according to the state diagram.

Contributors
Jatin Kumar 
Arnav Agarwal
Suyash Jitendra Majhi
Hemraj Meena
