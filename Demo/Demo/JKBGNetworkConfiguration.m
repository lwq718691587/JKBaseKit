//
//  JKBGNetworkConfiguration.m
//  Demo
//
//  Created by 刘伟强 on 2017/5/4.
//  Copyright © 2017年 刘伟强. All rights reserved.
//

#import "JKBGNetworkConfiguration.h"

@implementation JKBGNetworkConfiguration

-(NSString *)baseURLString{
    return @"http://bj-api.jianke.com/ask/";
}

/**
 *  在请求以前，对request预处理一下，默认不处理
 *
 *  @param request 请求
 *  @note 此方法添加，为了适应多域名，可以对request.methodName设置一个绝对路径
 */
- (void)preProcessingRequest:(BGNetworkRequest * _Nonnull)request{

}

/**
 *  对request当中的HTTP Header进行处理，可以在此方法内部加入公共的请求头内容
 *
 *  @param request 请求
 *
 *  @return 返回一个处理好的请求头给AF，默认加公共的Content-Type和User-Agent
 */
//- (NSDictionary * _Nonnull)requestHTTPHeaderFields:(BGNetworkRequest * _Nonnull)request{
//
//    return  @{};
//}



@end
