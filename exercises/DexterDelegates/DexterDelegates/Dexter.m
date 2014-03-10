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
    [self.caretaker dexterDidWhine:self];
}

- (void)isHungry {
    [self.caretaker dexterDidPawBowl:self];
}

@end

