//
//  DYLoginController.m
//  DYDemoLogin666-DYDemoLogin666
//
//  Created by 李云新 on 2019/8/21.
//

#import "DYDemoLoginHeader.h"
#import "DYLoginController.h"

@interface DYLoginController ()

@property (nonatomic, copy) void (^completeBlock)(void);

@end

@implementation DYLoginController

- (instancetype)initWithComplete:(void (^)(void))completeBlock {
    self = [super init];
    if (self) {
        self.completeBlock = completeBlock;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"登录界面";
    self.view.backgroundColor = [UIColor whiteColor];
    
    __weak typeof(self) weakSelf = self;
    self.navigationItem.rightBarButtonItem = [[KHBarButton rightBtnWithTitle:@"取消" Color:[UIColor blackColor] ClickOption:^{
        [weakSelf dismissViewControllerAnimated:YES completion:nil];
    }] getBarItem];
    
    UIButton *btn = [UIButton buttonWithType:(UIButtonTypeCustom)];
    btn.frame = CGRectMake(0, 0, 100, 100);
    btn.center = CGPointMake(self.view.frame.size.width * 0.5, self.view.frame.size.height * 0.5);
    [btn setImage:[DYDemoTools getLoginBundleImage:@"icon666"] forState:(UIControlStateNormal)];
    [btn addTarget:self action:@selector(btnClick:) forControlEvents:(UIControlEventTouchUpInside)];
    [self.view addSubview:btn];
}

- (void)btnClick:(UIButton *)btn {
    self.navigationItem.title = @"正在登录..";
    btn.userInteractionEnabled = NO;
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.0f * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        btn.userInteractionEnabled = YES;
        [DYDemoLoginData share].userName = [NSString stringWithFormat:@"用户名%f", [[NSDate date] timeIntervalSince1970]];
        self.navigationItem.title = @"登录成功..";
        if (self.completeBlock) {
            self.completeBlock();
        }
        [self dismissViewControllerAnimated:YES completion:nil];
    });
}

@end
