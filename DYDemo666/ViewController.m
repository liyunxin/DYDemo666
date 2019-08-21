//
//  ViewController.m
//  DYDemo666
//
//  Created by 李云新 on 2019/8/20.
//  Copyright © 2019年 Lambert. All rights reserved.
//

#import "ViewController.h"
#import "DYDemoToolsHeader.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)loginBtnClick:(UIButton *)btn {
    __weak typeof(self) weakSelf = self;
    UINavigationController *nVC = [DYDemoLogin dy_goLogin:^{
        weakSelf.navigationItem.title = [DYDemoLoginData share].userName;
    }];
    [self presentViewController:nVC animated:YES completion:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    __weak typeof(self) weakSelf = self;
    self.navigationItem.rightBarButtonItem = [[KHBarButton rightBtnWithTitle:@"个人信息" Color:[UIColor blackColor] ClickOption:^{
        [weakSelf.navigationController pushViewController:[[CTMediator sharedInstance] ingoVC] animated:YES];
    }] getBarItem];
    
    self.navigationItem.leftBarButtonItem = [[KHBarButton leftBtnWithTitle:@"关于我们" Color:[UIColor blackColor] ClickOption:^{
        NSString *urlStr = @"dydemo666://DYDemoLogin/AboutVC?name=heiheihei";
        UIViewController *vc = [[CTMediator sharedInstance] performActionWithUrl:[NSURL URLWithString:urlStr] completion:nil];
        [weakSelf.navigationController pushViewController:vc animated:YES];
    }] getBarItem];
    
    UIButton *loginBtn = [UIButton buttonWithType:(UIButtonTypeCustom)];
    loginBtn.frame = CGRectMake(0, 0, 100, 100);
    loginBtn.center = CGPointMake(self.view.frame.size.width * 0.5, self.view.frame.size.height * 0.5);
    [loginBtn setTitle:@"去登录" forState:(UIControlStateNormal)];
    [loginBtn setTitleColor:[UIColor blackColor] forState:(UIControlStateNormal)];
    [loginBtn addTarget:self action:@selector(loginBtnClick:) forControlEvents:(UIControlEventTouchUpInside)];
    [self.view addSubview:loginBtn];
    
    UIImage *img = [DYDemoTools getToolsBundleImage:@"img1"];
    UIImageView *iV = [[UIImageView alloc] initWithFrame:CGRectMake(100, 100, img.size.width, img.size.height)];
    iV.image = img;
    [self.view addSubview:iV];
}

@end
