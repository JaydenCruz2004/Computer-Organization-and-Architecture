/* CSC 2110, Computer Organization
 * Tutorial 5: Shift Operations
 * by Jayden Cruz
 *
 * void IntToHex(int N, char* S) copies into string 
 * S the hexadecimal representation of N.
*
 */
  .text
  .align  2
  .global IntToHex
  .type   IntToHex, function


IntToHex:
    mov     x2, x0        
    mov     x3, x1        
    mov     x4, #0        
    cmp     x2, #0        
    b.ne    loop           
    mov     w5, #'0'       
    strb    w5, [x3], #1   
    b       reverse       

loop:
    and     x5, x2, #15    
    cmp     x5, #9         
    ble     first9     
    add     x5, x5, #'A'   
    sub     x5, x5, #10    
    b       store_char     

first9:
    add     x5, x5, #'0'   

store_char:
    strb    w5, [x3], #1   
    add     x4, x4, #1     
    lsr     x2, x2, #4     
    cmp     x2, #0         
    b.ne    loop 

reverse:
    mov     x6, #0          
    sub     x7, x4, #1      

rloop:
    cmp     x6, x7                
    bge     done            
    ldrb    w8, [x1, x6]           
    ldrb    w9, [x1, x7]           
    strb    w9, [x1, x6]           
    strb    w8, [x1, x7]
    add     x6, x6, #1             
    sub     x7, x7, #1           
    b       rloop     

done:
    mov     w5, #0         
    strb    w5, [x3]       
    ret

  .size   IntToHex, . - IntToHex
  .ident  "CSC 2110, Tutorial 5 "
  .ident  "Jayden Cruz"
