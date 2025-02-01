/* CSC 2110, Computer Organization 
 * Tutorial 3: Addressing Modes I
 * by William H. Hooper

 * extern "C" long int compare(char s[], char t[]);
 * This procedure compares two strings.
 * returning 1 if R>S, 
 * 0 if R=S, and 
 * -1 if R<S.
 */
  .text
  .align  2
  .global compare
  .type compare,function  //sample


compare:

ldrb w2, [x0], #1
ldrb w3, [x1], #1

cmp w2, w3

b.gt r_greater
b.lt r_less
cbnz w2, compare

mov x0, #0
b end



r_greater:
mov x0, #1
ret

r_less:
mov x0, #-1
ret

end:
ret




  .size compare, . - compare
  .ident  "CSC 2110, Tutorial 3 "
  .ident  "William H. Hooper"
