//
//  PuppyCell.h
//  PuppyPicker
//
//  Created by Alex Rodriguez on 3/12/14.
//  Copyright (c) 2014 Alex Rodriguez. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PuppyCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *ageLabel;
@property (weak, nonatomic) IBOutlet UIImageView *popularity;

@end
