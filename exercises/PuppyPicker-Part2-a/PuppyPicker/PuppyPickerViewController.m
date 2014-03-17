//
//  ViewController.m
//  PuppyPicker
//
//  Created by Alex Rodriguez on 3/11/14.
//  Copyright (c) 2014 Alex Rodriguez. All rights reserved.
//

#import "PuppyPickerViewController.h"
#import "PuppyViewController.h"

@interface PuppyPickerViewController ()

@property (weak, nonatomic) IBOutlet UILabel *sliderLabel;
@property (weak, nonatomic) IBOutlet UISlider *slider;

@end

@implementation PuppyPickerViewController

- (IBAction)sliderValueChanged:(id)sender
{
    self.sliderLabel.text = [NSString stringWithFormat:@"%d", (int)self.slider.value];
}

- (IBAction)goButtonTapped:(id)sender
{
    [self performSegueWithIdentifier:@"GoToPuppy" sender:self];
}

- (IBAction)close:(UIStoryboardSegue *)segue {
    
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"GoToPuppy"]) {
        PuppyViewController *puppyVC = (PuppyViewController *) segue.destinationViewController;
        puppyVC.puppyToShow = self.sliderLabel.text.intValue;
    }
}

@end

