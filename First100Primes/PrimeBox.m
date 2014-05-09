//
//  PrimeBox.m
//  First100Primes
//
//  Created by Transcend on 5/9/14.
//  Copyright (c) 2014 SunLoveSystems. All rights reserved.
//

#import "PrimeBox.h"

@implementation PrimeBox

-(NSMutableArray *)createPrimes
{
    NSMutableArray *primes = [[NSMutableArray alloc] init];
    
    // First let's take care of 2, which doesn't obey the usual prime rules
    [primes addObject:[NSNumber numberWithInt:2]];
    NSLog(@"2 is prime");
    
    // Start at 3, the first prime that obeys usual rules
    int i = 3;
    
    // Set p our counter at 1 since we already know 2 is a prime
    // Also set d our denominator at 2 since we know the primes will be divisible by 1
    // So they should be divisible by nothing else up to their own value
    for (int p = 1; p < 100;) {
        for (int d = 2; d < i; d++) {
            if (i % d == 0) {
                break;
            } else if (d == i - 1 && i % d != 0) {
                NSLog(@"%d is prime", i);
                [primes addObject:[NSNumber numberWithInt:i]];
                p++;
            }
        }
        i++;
    }
    return primes;
}

-(BOOL)isPrime:(int)num
{
    // return false to make an empty non-void method work
    return false;
}


@end
