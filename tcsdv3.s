/* CSC 2110, Computer Organization
 * Tutorial C: Floating-Point Instructions
 * Version 1: Eliminate unnecessary moves
 * by Jayden Cruz
 *
 * Write float SSum(float X[], int N), 
 *which returns the sum of all the elements in array X[].
 *
 */
  .text
  .align  2
  .global SSum
  .type SSum, %function
  
SSum:
  sub x3, x3, x3
  fmov  s0, w3

loop:
  ldr  s1, [x0], #4
  ldr  s2, [x0], #4
  ldr  s3, [x0], #4
  ldr  s4, [x0], #4
  ldr  s5, [x0], #4
  ldr  s6, [x0], #4
  ldr  s7, [x0], #4
  ldr  s8, [x0], #4

  subs  w1, w1, #8

  fadd s1, s1, s2
  fadd s3, s3, s4
  fadd s5, s5 ,s6
  fadd s7, s7, s8
  fadd s2, s1, s3
  fadd s6, s5, s7
  fadd s0, s2, s0
  fadd s0, s6, s0
  
  b.gt  loop

  ret

.size SSum, .-SSum
.ident  "CSC 2110, Tutorial B, Mod 1 "
.ident  "William H. Hooper"
