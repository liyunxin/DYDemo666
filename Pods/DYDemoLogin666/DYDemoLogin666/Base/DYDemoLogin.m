//
//  DYDemoLogin.m
//  DYDemoLogin666-DYDemoLogin666
//
//  Created by 李云新 on 2019/8/21.
//

#import "DYDemoLoginHeader.h"
#import "DYDemoLogin.h"
#import "DYLoginController.h"

@implementation DYDemoLogin

+ (UINavigationController *)dy_goLogin:(void (^)(void))completeBlock {
    DYLoginController *vc = [[DYLoginController alloc] initWithComplete:completeBlock];
    return [[UINavigationController alloc] initWithRootViewController:vc];
}

@end
