//
//  CommonNavViewController.m
//  AX
//
//  Created by anxindeli on 2017/10/11.
//  Copyright © 2017年 anxindeli. All rights reserved.
//

#import "CommonNavViewController.h"

@interface CommonNavViewController ()

@end

@implementation CommonNavViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationBar.tintColor = RGBCOLOR(38, 42, 59);
    //修改返回箭头后文字颜色
    [self.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName :[UIColor whiteColor]}];
    self.navigationBar.translucent = NO;
    self.interactivePopGestureRecognizer.delegate =  (id<UIGestureRecognizerDelegate>)self;
}
- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated {
    if (self.viewControllers.count) { // not root vc
        viewController.hidesBottomBarWhenPushed = YES;
        [self setBackItem:viewController];
    }
    [super pushViewController:viewController animated:animated];
}

- (void)setBackItem:(UIViewController *)vc{
    self.interactivePopGestureRecognizer.delegate = nil;
    UIBarButtonItem *back = [[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"back"] style:UIBarButtonItemStylePlain target:self action:@selector(s_backAction)];
    vc.navigationItem.leftBarButtonItem = back;
}

- (void)s_backAction{
    
    if (self.presentingViewController != nil){
        [self dismissViewControllerAnimated:NO completion:nil];
    } else{
        [self popViewControllerAnimated:YES];
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
