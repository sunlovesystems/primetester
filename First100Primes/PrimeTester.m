//
//  PrimeTester.m
//  First100Primes
//
//  Created by Transcend on 5/9/14.
//  Copyright (c) 2014 SunLoveSystems. All rights reserved.
//

#import "PrimeTester.h"
#import "PrimeBox.h"

@implementation PrimeTester

-(BOOL)isPrime:(int)number
{
    for (int d = 2; d < number; d++) {
        if (number % d == 0) {
            NSLog(@"%d is not prime, try again...", number);
            return false;
        } else if (d == number - 1 && number % d != 0) {
            NSLog(@"%d is prime!", number);
            return true;
        }
    }
    return false;
}

@end
