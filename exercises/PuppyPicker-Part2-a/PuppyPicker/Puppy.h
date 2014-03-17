//
//  Puppy.h
//  PuppyPicker
//
//  Created by Alex Rodriguez on 3/12/14.
//  Copyright (c) 2014 Alex Rodriguez. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Puppy : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *age;
@property (nonatomic, assign) int popularity;
@property (nonatomic, strong) UIImage *photo;

- (instancetype)initWithName:(NSString *)name age:(NSString *)age populatiry:(int)populatiry photo:(UIImage *)photo;

@end