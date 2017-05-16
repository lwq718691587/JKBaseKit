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

-(NSInteger)NetworkTimeoutInterval{
    return 10;
}

-(NSDictionary *)headerDic{
    return @{
             @"User-Agent":@"JianKeDoctor",
             @"traceinfo" : @"versionName=1.0.0;versionCode=20170427;appName=%E5%81%A5%E5%AE%A2%E5%8C%BB%E9%99%A2;model=iPhone8,1;clientName=iPhone;channelId=10000;idfa=76D99786-F11E-4AF8-9E8D-3D7FF72F6422;loginSource=1;deviceUuid=2EB58EC386014B6BAF22BD5C46F17F83;source=2;cityLang=116.402588;cityLat=39.977867;applicationCode=jkHospital;userId=4;userToken=8c0d11f66525d77e205202c8f473dac8",
             };
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
