//
//  CustomNewsCell.m
//  Underverk
//
//  Created by Developer on 2013-08-15.
//  Copyright (c) 2013 Nebulon. All rights reserved.
//

#import "CustomNewsCell.h"

@implementation CustomNewsCell

@synthesize newsHeaderLabel;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
