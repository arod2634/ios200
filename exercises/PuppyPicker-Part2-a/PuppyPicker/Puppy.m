//
//  Puppy.m
//  PuppyPicker
//
//  Created by Alex Rodriguez on 3/12/14.
//  Copyright (c) 2014 Alex Rodriguez. All rights reserved.
//

#import "Puppy.h"

@implementation Puppy

- (instancetype)initWithName:(NSString *)name age:(NSString *)age populatiry:(int)populatiry photo:(UIImage *)photo
{
    
    if ((self = [super init])) {
        self.name = name;
        self.age = age;
        self.popularity = populatiry;
        self.photo = photo;
    }
    
    return self;
}

@end
