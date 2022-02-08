# SimpleProcessor

A processor designed using a VLSI electric design automation tool called Electric.

Available here
http://www.staticfreesoft.com/electric.html

I designed the architecture of the processor from the gate-level upwards, it is still a work in progress.
The verilog code produced by the library is available in SimpleProcessor.v and was tested on an Icoboard and Rasberry Pi.
  


## ISA
```
  //-- ADD
  //--    op  DR   S1 ...  S2  
  //--   0001 xxx xxx xxx xxx
  //-- AND
  //--    op  DR   S1 ...  S2  
  //--   0101 xxx xxx xxx xxx
  //-- NOT
  //--    op  DR   S1 ... ...  
  //--   1001 xxx xxx xxx xxx
  //-- LDR
  //--    op  DR  ... ... BaseR  
  //--   0110 xxx xxx xxx xxx
  //-- STR
  //--    op  ...  S1 ... BaseR  
  //--   0111 xxx xxx xxx xxx
  //-- LIM
  //--    op  DR  ___imm9____  
  //--   1101 xxx xxx xxx xxx
  //-- LEA
  //--    op  DR  ___????____  
  //--   1110 xxx xxx xxx xxx
  //-- LSB
  //--   	op  DR	. __imm8___
  //--   0010 xxx x xxxx xxxx
  //-- MSB
  //--    op  DR  . __imm8___
  //--   0011 xxx x xxxx xxxx
  //--------------------------
  //------------------------
  ```
