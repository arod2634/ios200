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
#import "Libby.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    Dexter *dexter = [[Dexter alloc] init];
    
    NSString *whoIsHome = @"Libby";
    //NSString *whoIsHome = NULL;
    
    if (whoIsHome) {
        
        if ([whoIsHome isEqualToString:@"Alex"]) {
            Alex *alex = [[Alex alloc] init];
            dexter.delegate = alex;
        } else if ([whoIsHome isEqualToString:@"Libby"]) {
            Libby *libby = [[Libby alloc] init];
            dexter.delegate = libby;
        }
        
        [dexter hasToGoBathroom];
        [dexter isHungry];
        
    } else {
        [dexter barksAtStrangers];
    }
    
    return YES;
}

@end