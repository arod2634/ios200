//
//  Alex.h
//  DexterDelegates
//
//  Created by Alex Rodriguez on 3/9/14.
//  Copyright (c) 2014 Alex Rodriguez. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dexter.h"

@class Dexter;

@interface Alex : NSObject

- (void)dexterDidWhine:(Dexter *)dexter;
- (void)dexterDidPawBowl:(Dexter *)dexter;

@end
