//
//  ARODAppDelegate.m
//  UITextFieldDelegates
//
//  Created by Alex Rodriguez on 3/9/14.
//  Copyright (c) 2014 Alex Rodriguez. All rights reserved.
//

#import "ARODAppDelegate.h"
#import "ARODViewController.h"

@implementation ARODAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    ARODViewController *rootView = [[ARODViewController alloc] init];
    self.window.rootViewController = rootView;
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

@end
