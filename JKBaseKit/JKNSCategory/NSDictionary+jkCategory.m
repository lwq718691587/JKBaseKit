//
//  NSDictionary+jkCategory.m
//  JKBaseKit
//
//  Created by 刘伟强 on 2018/1/22.
//

#import "NSDictionary+jkCategory.h"

@implementation NSDictionary (jkCategory)

- (NSString *)toJsonStr{
    NSError *err;
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:self options:NSJSONWritingPrettyPrinted error:&err];
    NSString *json = [[NSString alloc]initWithData:jsonData encoding:NSUTF8StringEncoding];
    return json;
}

@end
