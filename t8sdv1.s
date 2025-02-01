/* CSC 2110, Computer Organization
 * Tutorial 9: Floating-Point Instructions
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
  #fsub s0, s0, s0
  mov  w3, w2

loop:
  ldr  s1, [x0], #4

  fadd s0, s0, s1
  subs  w3, w3, #1
  b.gt  loop

  ret

  .size SSum, .-SSum
  .ident  "CSC 2110, Tutorial B, Mod 1 "
  .ident  "William H. Hooper"
