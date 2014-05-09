//
//  PrimeTester.m
//  First100Primes
//
//  Created by Transcend on 5/9/14.
//  Copyright (c) 2014 SunLoveSystems. All rights reserved.
//

#import "PrimeTester.h"

@implementation PrimeTester

-(BOOL)isPrime:(int)number
{
    if (number <= 0) {
        NSLog(@"That is not a valid number for this game, enter a positive number.");
        return false;
    } else if (number == 1) {
        NSLog(@"%d is not prime, try again...", number);
        _score--;
        NSLog(@"Your score is %d", _score);
        return false;
    } else if (number == 2) {
        NSLog(@"%d is prime!", number);
        _score++;
        NSLog(@"Your score is %d", _score);
        return true;
    } else {
        for (int d = 2; d < number; d++) {
            if (number % d == 0) {
                NSLog(@"%d is not prime, try again...", number);
                _score--;
                NSLog(@"Your score is %d", _score);
                return false;
            } else if (d == number - 1 && number % d != 0) {
                NSLog(@"%d is prime!", number);
                _score++;
                NSLog(@"Your score is %d", _score);
                return true;
            }
        }
    }
    return false;
}

@end
