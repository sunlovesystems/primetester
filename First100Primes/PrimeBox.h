//
//  PrimeBox.h
//  First100Primes
//
//  Created by Transcend on 5/9/14.
//  Copyright (c) 2014 SunLoveSystems. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PrimeBox : NSObject

@property (nonatomic, strong) NSMutableArray *primes;
@property (nonatomic) int score;

-(NSMutableArray *)createPrimes;
-(BOOL)isPrime:(int)num;

@end
