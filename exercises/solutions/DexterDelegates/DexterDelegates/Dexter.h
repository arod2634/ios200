//
//  Dexter.h
//  DexterDelegates
//
//  Created by Alex Rodriguez on 3/9/14.
//  Copyright (c) 2014 Alex Rodriguez. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DexterDelegate.h"

@interface Dexter : NSObject

@property (nonatomic, strong) id <DexterDelegate> delegate;

- (void)hasToGoBathroom;
- (void)isHungry;
- (void)barksAtStrangers;

@end
