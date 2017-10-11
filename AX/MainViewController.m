//
//  MainViewController.m
//  AX
//
//  Created by anxindeli on 2017/10/11.
//  Copyright © 2017年 anxindeli. All rights reserved.
//

#import "MainViewController.h"
#import <AXUserInfo/AXUserViewController.h>
#import <AXProject/ProjectListViewController.h>
#import "CommonNavViewController.h"
@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];


    NSArray *viewControllers = @[@"ProjectListViewController",@"AXUserViewController"];
    NSArray *imageArr = @[@"project_tabBar.png",@"user_tabBar.png"];
    NSArray *imageSelArr = @[@"project_tabBar_sel.png",@"user_tabBar_sel.png"];
    NSArray *titleArr = @[@"项目",@"个人中心"];

    
    for (int i=0;i<viewControllers.count;i++) {
        NSString *className = viewControllers[i];
        UIViewController *viewController = [NSClassFromString(className) new];
        CommonNavViewController *navigationController = [[CommonNavViewController alloc] initWithRootViewController:viewController];
        navigationController.navigationBarHidden = YES;
        viewController.tabBarItem.title = titleArr[i];
        [viewController.tabBarItem setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:RGBCOLOR(38, 42, 59),NSForegroundColorAttributeName, nil] forState:UIControlStateNormal];
        [viewController.tabBarItem setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:RGBCOLOR(65, 146, 227),NSForegroundColorAttributeName, nil] forState:UIControlStateSelected];
        viewController.tabBarItem.image = [[UIImage imageNamed:imageArr[i]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        viewController.tabBarItem.selectedImage = [[UIImage imageNamed:imageSelArr[i]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        [self addChildViewController:navigationController];
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
