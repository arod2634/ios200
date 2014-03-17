//
//  PuppyListViewController.m
//  PuppyPicker
//
//  Created by Alex Rodriguez on 3/12/14.
//  Copyright (c) 2014 Alex Rodriguez. All rights reserved.
//

#import "PuppyListViewController.h"
#import "Puppy.h"
#import "PuppyCell.h"
#import "PuppyDetailViewController.h"

@interface PuppyListViewController () <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, assign) int selectedRow;

@end

@implementation PuppyListViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.pups = [NSMutableArray arrayWithCapacity:3];
    
    Puppy *puppy = [[Puppy alloc] initWithName:@"Rocky" age:@"2 Months" populatiry:5 photo:[UIImage imageNamed:@"01.png"]];
    [self.pups addObject:puppy];
    
    puppy = [[Puppy alloc] initWithName:@"Cocoa" age:@"1 Month" populatiry:4 photo:[UIImage imageNamed:@"02.png"]];
    [self.pups addObject:puppy];
    
    puppy = [[Puppy alloc] initWithName:@"Bullet" age:@"3 Months" populatiry:3 photo:[UIImage imageNamed:@"03.png"]];
    [self.pups addObject:puppy];
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.pups count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    PuppyCell *cell = (PuppyCell *)[tableView dequeueReusableCellWithIdentifier:@"PuppyCell"];
    
    Puppy *puppy = self.pups[indexPath.row];
    cell.nameLabel.text = puppy.name;
    cell.ageLabel.text = puppy.age;
    cell.popularity.image = [self imageForPopularityRating:puppy.popularity];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    self.selectedRow = indexPath.row;
    
    [self performSegueWithIdentifier:@"ViewDetails" sender:self];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
    if ([segue.identifier isEqualToString:@"ViewDetails"]) {
        
        PuppyDetailViewController *detailsVC = (PuppyDetailViewController *) segue.destinationViewController;
        Puppy *puppy = self.pups[self.selectedRow];
        
        detailsVC.puppyDetails = puppy;
        
    }
}

- (UIImage *)imageForPopularityRating:(int)rating
{
    switch (rating) {
        case 1: return [UIImage imageNamed:@"1StarSmall"];
        case 2: return [UIImage imageNamed:@"2StarsSmall"];
        case 3: return [UIImage imageNamed:@"3StarsSmall"];
        case 4: return [UIImage imageNamed:@"4StarsSmall"];
        case 5: return [UIImage imageNamed:@"5StarsSmall"];
    }
    return nil;
}

@end
