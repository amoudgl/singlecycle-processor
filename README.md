Sngle cycle processor
======================

INSTRUCTIONS FORMAT
-------------------

add r1,r2,r2   
 r1 <= r1 + r2  

mov   
 r1 <= r2  

addi r1, r2, immi  
 r1 <= r2 + immi   

movi r1, immi  
 r1 <= immi  

blt addr  
if flag is set, then pc <= addr  

store x, addr  
mem[addr] <= x  

cmp r1, r2  
	if(r1 < r2) set flag = 1;  
	else flag = 0;# SC-Processor  

pc - program counter    
addr - adress of memory    
immi - immediate value    
