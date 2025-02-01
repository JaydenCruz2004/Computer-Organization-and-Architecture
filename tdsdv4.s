/* CSC 2110, Computer Organization
 * Tutorial D: Vector Operations
 * Version 4: Use Vector Operations
 * by Jayden Cruz
 *
 * Write float SSum(float X[], int N), 
 * which returns the sum of all the elements in array X[].
 *
 */
  .text
  .align  2
  .global SSum
  .type SSum, %function

SSum:
  movi   v5.16b, #0      
  movi   v0.16b, #0      
  
loop:
  ld1    {v3.4s}, [x0], #16   
  ld1    {v4.4s}, [x0], #16   
  
  fadd   v2.4s, v3.4s, v4.4s  
  fadd   v5.4s, v5.4s, v2.4s  
  
  subs   w1, w1, #8            
  b.gt   loop                  
  
  faddp  v1.2s, v5.2s, v5.2s   
  faddp  s0, v1.2s             
  
  ret

.size SSum, .-SSum
.ident  "CSC 2110, Tutorial D, Mod 4 "
.ident  "William H. Hooper"