//
//  ViewController.m
//  LVKeyBoard
//
//  Created by zhanglingxiang on 16/8/24.
//  Copyright © 2016年 zhanglingxiang. All rights reserved.
//

#import "ViewController.h"
#import "LVKeyboard/LVKeyboard.h"

@interface ViewController ()
{
    
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    LVKeyboard* keyboard = [[LVKeyboard alloc] init];
    keyboard.delegate = self;
    _tf_input.inputView = keyboard;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark lvkeyboardDelegate
- (void)keyboard:(LVKeyboard *)keyboard didClickTextButton:(UIButton *)textBtn string:(NSMutableString *)string;{
    _tf_input.text = string;
}

- (void)keyboard:(LVKeyboard *)keyboard didClickDeleteButton:(UIButton *)deleteBtn string:(NSMutableString *)string;
{
    _tf_input.text = string;
}


@end
