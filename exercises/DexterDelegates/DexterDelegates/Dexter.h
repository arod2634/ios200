//
//  Dexter.h
//  DexterDelegates
//
//  Created by Alex Rodriguez on 3/9/14.
//  Copyright (c) 2014 Alex Rodriguez. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Alex.h"
//#import "Libby.h"

//@class Libby;
@class Alex;

@interface Dexter : NSObject

//@property (nonatomic, strong) Libby *caretaker;
@property (nonatomic, strong) Alex *caretaker;

- (void)hasToGoBathroom;
- (void)isHungry;

@end
