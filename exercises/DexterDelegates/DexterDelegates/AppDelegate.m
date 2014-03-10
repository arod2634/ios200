//
//  AppDelegate.m
//  DexterDelegates
//
//  Created by Alex Rodriguez on 3/9/14.
//  Copyright (c) 2014 Alex Rodriguez. All rights reserved.
//

#import "AppDelegate.h"
#import "Dexter.h"
#import "Alex.h"
//#import "Libby.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    Dexter *dexter = [[Dexter alloc] init];
    Alex *alex = [[Alex alloc] init];
    //Libby *libby = [[Libby alloc] init];
    
    dexter.caretaker = alex;
    //dexter.caretaker = libby;
    
    [dexter hasToGoBathroom];
    [dexter isHungry];
    
    return YES;
}

@end