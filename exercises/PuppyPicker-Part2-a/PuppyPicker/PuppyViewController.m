//
//  PuppyViewController.m
//  PuppyPicker
//
//  Created by Alex Rodriguez on 3/11/14.
//  Copyright (c) 2014 Alex Rodriguez. All rights reserved.
//

#import "PuppyViewController.h"

@interface PuppyViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation PuppyViewController

- (void)viewWillAppear:(BOOL)animated {
    
    if(self.puppyToShow == 1)
        self.navigationItem.title = @"Rocky";
    
    if(self.puppyToShow == 2)
        self.navigationItem.title = @"Cocoa";
    
    if(self.puppyToShow == 3)
        self.navigationItem.title = @"Bullet";
        
        
    NSString *imageName = [NSString stringWithFormat:@"%02d.png", self.puppyToShow];
    self.imageView.image = [UIImage imageNamed:imageName];

}

@end
