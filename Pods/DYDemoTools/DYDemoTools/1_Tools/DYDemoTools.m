//
//  DYDemoTools.m
//  DYDemoTools
//
//  Created by 李云新 on 2019/8/20.
//

#import "DYDemoTools.h"

@implementation DYDemoTools

+ (UIImage *)getToolsBundleImage:(NSString *)imageName {
    static NSBundle *bundle;
    if (bundle == nil) {
        bundle = [NSBundle bundleWithPath:[[NSBundle bundleForClass:NSClassFromString(@"DYDemoTools")] pathForResource:@"DYDemoTools" ofType:@"bundle"]];
    }
    
    UIImage *image = [UIImage imageNamed:imageName inBundle:bundle compatibleWithTraitCollection:nil];
    if (image == nil) {
        image = [UIImage imageNamed:imageName];
    }
    
    return image;
}

@end
