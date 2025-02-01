/* CSC 2110, Computer Organization 
 * Tutorial 1: Introduction to Assembly
 * by Jayden Cruz
 *
 * extern "C"  int remain( int n,  int d); 
 *
 * this program remain(n,d) returns the remain of n divided by d
 * remain = dividend - (divisor * quotient)
 * d = divisor
 * n = dividend
 */
  .text
  .align  4
  .global remain
  .type remain, %function

remain:
  mov  x3, x0
  mov  x4, x1
  
  sdiv x5, x3, x4
  mul  x6, x4, x5

  sub  x7, x3, x6
  mov x0, x7
  ret
  
  .size remain, .-remain
  .ident  "GCC: (SUSE Linux) 4.8.5"
  .ident  "William H. Hooper, CSC 1110, t1"
  .section  .note.GNU-stack,"",%progbits
