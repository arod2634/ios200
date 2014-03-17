//
//  PuppyDetailViewController.m
//  PuppyPicker
//
//  Created by Alex Rodriguez on 3/16/14.
//  Copyright (c) 2014 Alex Rodriguez. All rights reserved.
//

#import "PuppyDetailViewController.h"

@interface PuppyDetailViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *populatiry;
@property (weak, nonatomic) IBOutlet UIImageView *photo;
@property (weak, nonatomic) IBOutlet UILabel *months;

@end

@implementation PuppyDetailViewController

- (void)viewDidLoad
{
    self.navigationItem.title = self.puppyDetails.name;
    self.months.text = self.puppyDetails.age;
    self.populatiry.image = [self imageForPopularityRating:self.puppyDetails.popularity];
    self.photo.image = self.puppyDetails.photo;
}

- (UIImage *)imageForPopularityRating:(int)rating
{
    switch (rating) {
        case 1: return [UIImage imageNamed:@"1Star"];
        case 2: return [UIImage imageNamed:@"2Stars"];
        case 3: return [UIImage imageNamed:@"3Stars"];
        case 4: return [UIImage imageNamed:@"4Stars"];
        case 5: return [UIImage imageNamed:@"5Stars"];
    }
    return nil;
}

@end
