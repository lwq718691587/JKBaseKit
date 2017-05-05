//
//  JKInternetSettingRequst.m
//  JianKeDoctor
//
//  Created by 刘伟强 on 2017/4/26.
//  Copyright © 2017年 lijiawei. All rights reserved.
//

#import "JKInternetSettingRequst.h"

@implementation JKInternetSettingRequst

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self setMethodName:@"api/int/conf"];
        [self setHttpMethod:BGNetworkRequestHTTPGet];
    }
    return self;
}



@end
