#include <stdio.h>
#include <stdint.h>
#include "lib/sieve.h"

int main() {
    sieve();

    for(int i=0; i<SIEVE_SZ; i++) {
        if (primes[i]) {
            printf("%d is prime\n", i);
        }
    }
    return 0;
}

