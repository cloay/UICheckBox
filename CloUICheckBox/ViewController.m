//
//  ViewController.m
//  CloUICheckBox
//
//  Created by cloay on 12-10-15.
//  Copyright (c) 2012年 cloay. All rights reserved.
//

#import "ViewController.h"
#import "UICheckBox.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    UICheckBox *checkBox = [[UICheckBox alloc] initWithFrame:CGRectMake(35, 212, 80, 40) withTitle:@"记住密码"];
    [checkBox addTarget:self action:@selector(checkBoxDidSelected:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:checkBox];
}

- (IBAction)checkBoxDidSelected:(id)sender{
    UICheckBox *checkBox = (UICheckBox*)sender;
    if (checkBox.selected) {
        [checkBox setSelected:NO];
    }else{
        [checkBox setSelected:YES];
    }
    //You can save username and password or to do other things
    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
