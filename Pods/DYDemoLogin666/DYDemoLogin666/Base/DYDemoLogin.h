//
//  DYDemoLogin.h
//  DYDemoLogin666-DYDemoLogin666
//
//  Created by 李云新 on 2019/8/21.
//

#import <Foundation/Foundation.h>
#import "DYDemoLoginData.h"
#import "CTMediator+DYDemoLogin.h"

@interface DYDemoLogin : NSObject

+ (UINavigationController *)dy_goLogin:(void (^)(void))completeBlock;

@end
