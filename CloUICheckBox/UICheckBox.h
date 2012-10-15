//
//  UICheckBox.h
//  CloUICheckBox
//
//  Created by cloay on 12-10-15.
//  Copyright (c) 2012年 cloay. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UICheckBox : UIButton{
    UIImageView *boxImageView;
    UILabel *titleLabel;
}

- (id)initWithFrame:(CGRect)frame withTitle:(NSString *)title;
@end

