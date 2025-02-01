/*  CSC 2110, Computer Organization 
 *  Tutorial 2: Labels & Branch Instructions
 *  by William H. Hooper

 *  extern "C" void factor(int n);
 *  factor(n) returns the smallest number that evenly divides n (if n is prime, *return n)
 */
  .text
  .align  2
  .global factor
  .type   factor,function
  
  factor:
  mov x1, #1

  loop:
  add x1, x1, #1
  sdiv x2, x0, x1
  mul  x3, x2, x1
  cmp x0, x3
  b.gt loop



  mov x0, x1
  ret

  .size  factor, . - factor
  .ident  "CSC 2110, Tutorial 2 "
  .ident  "William H. Hooper"
