//
//  DexterDelegate.h
//  DexterDelegates
//
//  Created by Alex Rodriguez on 3/9/14.
//  Copyright (c) 2014 Alex Rodriguez. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Dexter;

@protocol DexterDelegate <NSObject>

- (void)dexterDidWhine:(Dexter *)dexter;
- (void)dexterDidPawBowl:(Dexter *)dexter;

@end

