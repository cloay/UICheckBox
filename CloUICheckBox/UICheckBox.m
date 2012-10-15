//
//  UICheckBox.m
//  CloUICheckBox
//
//  Created by cloay on 12-10-15.
//  Copyright (c) 2012年 cloay. All rights reserved.
//

#import "UICheckBox.h"

@implementation UICheckBox

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/
- (id)initWithFrame:(CGRect)frame withTitle:(NSString *)title{
    self = [self initWithFrame:frame];
    float y = 0;
    if (frame.size.height > 16) {
        y = (frame.size.height - 16)/2;
    }
    boxImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, y, 16, 16)];
    [boxImageView setImage:[UIImage imageNamed:@"box"]];
    [self addSubview:boxImageView];

    titleLabel = [[UILabel alloc] initWithFrame:CGRectZero];
    [titleLabel setBackgroundColor:[UIColor clearColor]];
    [titleLabel setFont:[UIFont systemFontOfSize:16]];
    [titleLabel setTextColor:[UIColor grayColor]];
    [titleLabel setText:title];
    CGSize nameSize = [title sizeWithFont:[UIFont systemFontOfSize:16] constrainedToSize:self.frame.size lineBreakMode:titleLabel.lineBreakMode];
    if (frame.size.height > 21) {
        y = (frame.size.height - 21)/2;
    }
    [titleLabel setFrame:CGRectMake(26, y, nameSize.width, 21)];
    [self addSubview:titleLabel];
    return self;
}

- (void)dealloc{
    [boxImageView release];
    [titleLabel release];
    [super dealloc];
}

- (void)setSelected:(BOOL)selected{
    if (selected) {
        [boxImageView setImage:[UIImage imageNamed:@"box_selected"]];
    }else{
        [boxImageView setImage:[UIImage imageNamed:@"box"]];
    }
    [super setSelected:selected];
}

@end
