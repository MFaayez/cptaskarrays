// "Copyright [2023] <Malik Faayez Muhammad>"
#include <stdio.h>
#include <bit_ops.h>
/* Returns the Nth bit of X. Assumes 0 <= N <= 31. */
unsigned get_bit(unsigned x, unsigned n) {
    /* YOUR CODE HERE */
    unsigned a = (x >> n)&1;
    return a; /* UPDATE WITH THE CORRECT RETURN VALUE*/
}

/* Set the nth bit of the value of x to v. Assumes 0 <= N <= 31, and V is 0 or 1 */
void set_bit(unsigned *x, unsigned n, unsigned v) {
    /* YOUR CODE HERE */
    unsigned a = 0;
    if (v == 0) {
      if (((*x >> n) &1) == 1) {
        *x = (1 << n)^*x;
       } else {
         a = (0 << n);
         *x = a|*x;
      }
    } else {
      *x = (1 << n)|*x;
    }
}

/* Flips the Nth bit in X. Assumes 0 <= N <= 31.*/
void flip_bit(unsigned *x, unsigned n) {
    /* YOUR CODE HERE */
    *x = *x^(1 << n);
}

