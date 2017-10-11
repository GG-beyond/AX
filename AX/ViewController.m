//
//  ViewController.m
//  AX
//
//  Created by anxindeli on 2017/8/22.
//  Copyright © 2017年 anxindeli. All rights reserved.
//

#import "ViewController.h"
#import <ReactiveCocoa/ReactiveCocoa.h>

@interface ViewController ()<UITextFieldDelegate>
@property (nonatomic, strong) NSString *name;
@end

@implementation ViewController
- (void)viewDidLoad {
    [super viewDidLoad];
/*
    UITextField *textField = [[UITextField alloc] initWithFrame:CGRectMake(100, 100, 100, 30)];
    [self.view addSubview:textField];
    textField.placeholder = @"请输入";
    textField.text = @"姓名";
    [textField.rac_textSignal subscribeNext:^(id x) {
        NSLog(@"x = %@",x);
    }];
 */
    

    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
