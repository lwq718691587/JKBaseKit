//
//  BGNetworkConfiguration.m
//  BGNetwork
//
//  Created by user on 15/8/18.
//  Copyright © 2015年 BGNetwork https://github.com/liuchungui/BGNetwork/tree/dev. All rights reserved.
//

#import "BGNetworkConfiguration.h"
#import "BGUtilFunction.h"

@interface BGNetworkConfiguration ()
@property(nonatomic, strong) NSString *baseURLString;

@end

@implementation BGNetworkConfiguration

+ (instancetype)configuration{
    BGNetworkConfiguration *configuration = [[self alloc] init];
    return configuration;
}

#pragma mark - BGNetworkConfiguration
- (NSString *)baseURLString {
    return _baseURLString;
}

-(NSInteger)NetworkTimeoutInterval{
    return 15;
}

-(NSDictionary *)headerDic{
    return @{};
}


- (void)preProcessingRequest:(BGNetworkRequest *)request {
    
}


- (NSString *)queryStringForURLWithRequest:(BGNetworkRequest *)request{
    if(request.httpMethod == BGNetworkRequestHTTPGet){
        return BGQueryStringFromParamDictionary(request.parametersDic);
    }
    else{
        return nil;
    }
}

- (NSData *)httpBodyDataWithRequest:(BGNetworkRequest *)request{
    if(!request.parametersDic.count){
        return nil;
    }
    NSError *error = nil;
    NSData *httpBody = [NSJSONSerialization dataWithJSONObject:request.parametersDic options: (NSJSONWritingOptions)0 error:&error];
    if(error){
        return nil;
    }
    return httpBody;
}

- (NSData *)decryptResponseData:(NSData *)responseData response:(NSURLResponse *)response request:(BGNetworkRequest *)request{
    return responseData;
}

- (BOOL)shouldCacheResponseData:(id)responseData task:(NSURLSessionDataTask *)task request:(BGNetworkRequest *)request{
    if(request.cachePolicy == BGNetworkRequestCacheDataAndReadCacheOnly || request.cachePolicy == BGNetworkRequestCacheDataAndReadCacheLoadData) {
        return YES;
    }
    return NO;
}

- (BOOL)shouldBusinessSuccessWithResponseData:(id)responseData task:(NSURLSessionDataTask *)task request:(BGNetworkRequest *)request {
    return YES;
}

@end
