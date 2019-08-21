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

- (void)viewDidLoad {
    [super viewDidLoad];
    __weak typeof(self) weakSelf = self;
    self.navigationItem.rightBarButtonItem = [[KHBarButton rightBtnWithTitle:@"哈哈哈" Color:[UIColor blackColor] ClickOption:^{
        [weakSelf addImageDemo];
    }] getBarItem];
}

- (void)addImageDemo {
    UIImage *img = [DYDemoTools getToolsBundleImage:@"img1"];
    UIImageView *iV = [[UIImageView alloc] initWithFrame:CGRectMake(100, 100, img.size.width, img.size.height)];
    iV.image = img;
    [self.view addSubview:iV];
}

@end
