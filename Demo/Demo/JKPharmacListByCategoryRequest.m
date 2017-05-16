//
//  JKPharmacListByCategoryRequest.m
//  JianKeDoctor
//
//  Created by 刘伟强 on 2017/3/18.
//  Copyright © 2017年 lijiawei. All rights reserved.
//

#import "JKPharmacListByCategoryRequest.h"

@implementation JKPharmacListByCategoryRequest

-(instancetype)initWithCategory:(NSString *)category
                     pageNumber:(NSInteger )pageNumber
{
    self = [super init];
    if (self) {
        [self setMethodName:[NSString stringWithFormat:@"http://asksearch.jianke.com/doctor-server/product/listByCategory/%@",category]];
        [self setHttpMethod:BGNetworkRequestHTTPPost];
        [self setIntegerValue:pageNumber forParamKey:@"pn"];
        [self setIntegerValue:10 forParamKey:@"ps"];
    }
    return self;
}








@end
