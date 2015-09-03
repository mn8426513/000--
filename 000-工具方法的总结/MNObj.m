//
//  MNObj.m
//  000-工具方法的总结
//
//  Created by Mac on 14-10-18.
//  Copyright (c) 2014年 MN. All rights reserved.
//

#import "MNObj.h"

@implementation MNObj

//   调用alloc方法，alloc会直接调用此方法
+ (instancetype)allocWithZone:(struct _NSZone *)zone{

    static MNObj *instance;
    
    static dispatch_once_t onceToken;
    //永远只会执行一次
    dispatch_once(&onceToken, ^{
     
        instance = [super allocWithZone:zone];
   
    });
 return instance;
    
}


+(instancetype)sharedMNObj{

    return  [[self alloc] init];
 
}


@end
