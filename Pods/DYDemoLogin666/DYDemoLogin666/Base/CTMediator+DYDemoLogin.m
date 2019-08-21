//
//  CTMediator+DYDemoLogin.m
//  DYDemoLogin666
//
//  Created by 李云新 on 2019/8/21.
//

#import "CTMediator+DYDemoLogin.h"

@implementation CTMediator (DYDemoLogin)

- (UIViewController *)ingoVC {
    return [self performTarget:@"DYDemoLogin"
                        action:@"InfoVC"
                        params:@{}
             shouldCacheTarget:NO];
}

@end
