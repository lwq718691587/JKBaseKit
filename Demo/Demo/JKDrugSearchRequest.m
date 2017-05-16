//
//  JKDrugSearchRequest.m
//  JianKeDoctor
//
//  Created by 刘伟强 on 2017/3/18.
//  Copyright © 2017年 lijiawei. All rights reserved.
//

#import "JKDrugSearchRequest.h"

@implementation JKDrugSearchRequest

-(instancetype)initWithkeyWords:(NSString *)keyWord
                             pn:(NSInteger )pn
                             ps:(NSInteger )ps
                      clientKey:(NSString *)clientKey{

    self = [super init];
    if (self) {
        [self setMethodName:@"http://asksearch.jianke.com/doctor-server/search/search"];
        [self setHttpMethod:BGNetworkRequestHTTPPost];
        [self setValue:keyWord forParamKey:@"keyWord"];
        [self setIntegerValue:pn forParamKey:@"pn"];
        [self setIntegerValue:ps forParamKey:@"ps"];
        [self setValue:clientKey forParamKey:@"clientKey"];
    }
    return self;
}

@end
