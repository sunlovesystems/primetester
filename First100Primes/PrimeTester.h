//
//  PrimeTester.h
//  First100Primes
//
//  Created by Transcend on 5/9/14.
//  Copyright (c) 2014 SunLoveSystems. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PrimeTester : NSObject

@property (nonatomic) int score;

-(BOOL)isPrime:(int)number;

@end
