//
//  NSObject+StareValeu.m
//  LQBaseProject
//
//  Created by 刘伟强 on 16/9/22.
//  Copyright © 2016年 刘伟强. All rights reserved.
//

#import "NSObject+StareValeu.h"
#import "FastCoder.h"
@implementation NSObject (StareValeu)


- (void)fsStoreValueWithKey:(NSString *)key{
    
    NSData * data = [FastCoder dataWithRootObject:self];
    if (data) {
        [[NSUserDefaults standardUserDefaults] setObject:data forKey:key];
        [[NSUserDefaults standardUserDefaults] synchronize];
    }
}

+(id)fsValueByKey:(NSString *)key{
    NSData * data = [[NSUserDefaults standardUserDefaults] valueForKey:key];
    return [FastCoder objectWithData:data];
}

@end
