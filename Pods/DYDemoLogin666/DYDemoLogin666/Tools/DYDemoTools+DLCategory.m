//
//  DYDemoTools+DLCategory.m
//  DYDemoLogin666-DYDemoLogin666
//
//  Created by 李云新 on 2019/8/21.
//

#import "DYDemoTools+DLCategory.h"

@implementation DYDemoTools (DLCategory)

+ (UIImage *)getLoginBundleImage:(NSString *)imageName {
    static NSBundle *bundle;
    if (bundle == nil) {
        bundle = [NSBundle bundleWithPath:[[NSBundle bundleForClass:NSClassFromString(@"DYDemoLogin")] pathForResource:@"DYDemoLogin666" ofType:@"bundle"]];
    }
    
    UIImage *image = [UIImage imageNamed:imageName inBundle:bundle compatibleWithTraitCollection:nil];
    if (image == nil) {
        image = [UIImage imageNamed:imageName];
    }
    
    return image;
}

@end
