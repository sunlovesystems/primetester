//
//  main.m
//  First100Primes
//
//  Created by Transcend on 4/26/14.
//  Copyright (c) 2014 SunLoveSystems. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PrimeBox.h"
#import "PrimeTester.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // We moved the creation of the primes array into a PrimeBox object
        // that is basically like a factory, which creates primes. Then we
        // use the PrimeBox's createPrimes method/function to create the array.
        // This works well for testing if a number is among the first 100 primes.
        
        // We also can make a PrimeTester to test if any number is prime...
        
        // Do this part if testing first 100 primes -- otherwise, use primetester
        // PrimeBox *primebox = [[PrimeBox alloc] init];
        // NSArray *myPrimes = [primebox createPrimes];
        
        PrimeTester *primetester = [[PrimeTester alloc] init];
        
        int num;
        primetester.score = 0;
        
        while (true) {
            NSLog(@"Please enter a number: ");
            scanf("%d",&num);
            NSLog(@"You have entered %d", num);
            
            [primetester isPrime:num];
            
            // If doing first 100 primes, check to see if the number is in the first 100 primes
//            for (NSNumber *number in myPrimes) {
//                if ([number intValue] == num) {
//                    NSLog(@"%d is one of the first 100 primes!", num);
//                    break;
//                }
//                if (([number intValue] == 541) && ([number intValue] != num)) {
//                NSLog(@"%d is not one of the first 100 primes. Try again...");
//                }
//            }

        }
        
    }

    return 0;
}

