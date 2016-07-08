//
//  LanhanSinglton.m
//  123
//
//  Created by Scorpio on 16/6/17.
//  Copyright © 2016年 Neusoft. All rights reserved.
//

#import "LanhanSinglton.h"
static id _instance;
@implementation LanhanSinglton
//加上load方法  主要#import了LanhanSinglton 就会加载单例 而且只会加载一次
/*
+ (void)load{
    _instance = [[LanhanSinglton alloc]init];
}
*/

+ (instancetype)sharedInstanced{
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [[LanhanSinglton alloc]init];
    });
    return _instance;
}

+ (instancetype)allocWithZone:(struct _NSZone *)zone{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [super allocWithZone:zone];
    });
    return _instance;
}

- (id)copyWithZone:(nullable NSZone *)zone{
    return _instance;
}

- (id)mutableCopyWithZone:(nullable NSZone *)zone{
    return  _instance;
}
@end
