//
//  DYDemoLoginData.m
//  DYDemoLogin666
//
//  Created by 李云新 on 2019/8/21.
//

#import "DYDemoLoginData.h"

@implementation DYDemoLoginData

+ (instancetype)share {
    static id instance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (instancetype)init {
    self = [super init];
    if (self) {
        
    }
    return self;
}

@end
