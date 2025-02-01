/* CSC 2110, Computer Organization
 * Tutorial 4: Addressing Modes II
 * by Jayden Cruz
 *
 * CopyScores(int N, short int S[],
 *            record R[]);
 * copies N scores from array R into array S
 */
  .text
  .align  2
  .global CopyScores
  .type CopyScores,function

add X2, x2, #14

CopyScores:
  Ldrb w3, [x2, #14]
  strb w3, [x1]
  add x1, x1, #2
  add x2, x2, #20
  sub x0, x0, #1 
  cbz x0, end

  b CopyScores

end:
  ret

  .size CopyScores, . - CopyScores
  .ident  "CSC 2110, Tutorial 4 "
  .ident  "Jayden Cruz"
