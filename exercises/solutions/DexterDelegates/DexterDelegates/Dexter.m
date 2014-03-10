//
//  Dexter.m
//  DexterDelegates
//
//  Created by Alex Rodriguez on 3/9/14.
//  Copyright (c) 2014 Alex Rodriguez. All rights reserved.
//

#import "Dexter.h"

@implementation Dexter

- (void)hasToGoBathroom {
    [self.delegate dexterDidWhine:self];
}

- (void)isHungry {
    [self.delegate dexterDidPawBowl:self];
}

- (void)barksAtStrangers
{
    NSLog(@"WOOF WOOF!");
}

@end

