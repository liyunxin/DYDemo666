//
//  DYInfoController.m
//  DYDemoLogin666
//
//  Created by 李云新 on 2019/8/21.
//

#import "DYDemoLoginHeader.h"
#import "DYInfoController.h"

@interface DYInfoController ()

@end

@implementation DYInfoController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.view.layer.contentsGravity = kCAGravityResizeAspect;
    self.view.layer.contents = (id)[DYDemoTools getToolsBundleImage:@"img1"].CGImage;
}

@end
