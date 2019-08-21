//
//  Target_DYDemoLogin.m
//  DYDemoLogin666
//
//  Created by 李云新 on 2019/8/21.
//

#import "Target_DYDemoLogin.h"
#import "DYInfoController.h"

@implementation Target_DYDemoLogin

- (UIViewController *)Action_InfoVC:(NSDictionary *)param {
    return [[DYInfoController alloc] init];
}

- (UIViewController *)Action_AboutVC:(NSDictionary *)param {
    UIViewController *vc = [[UIViewController alloc] init];
    vc.view.backgroundColor = [UIColor whiteColor];
    vc.navigationItem.title = [NSString stringWithFormat:@"关于我们-%@", param[@"name"]];
    return vc;
}

@end
