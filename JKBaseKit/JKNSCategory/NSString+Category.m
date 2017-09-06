//
//  NSString+Category.m
//  Pods
//
//  Created by 李里 on 2017/5/25.
//
//

#import "NSString+Category.h"

#import <AdSupport/ASIdentifierManager.h>
#include <sys/utsname.h>

@implementation NSString (Category)

//去掉前后空格
- (NSString *)trimmedString{
    return [self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
}

- (NSMutableAttributedString *)getSpaceStr:(CGFloat)spacing{
    NSString * str = self;
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:str];
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    [paragraphStyle setLineSpacing:spacing];//调整行间距
    [attributedString addAttribute:NSParagraphStyleAttributeName value:paragraphStyle range:NSMakeRange(0, [str length])];
    
    return attributedString;
}

- (CGFloat)getStringWidthWithHeight:(CGFloat)height fontSize:(NSInteger)fontSize{
    CGSize size  = CGSizeMake(0, 0);
    if (![self isKindOfClass:[NSNull class]] && ![self isEqualToString:@""]) {
        size = [self boundingRectWithSize:CGSizeMake(MAXFLOAT, height)
                                  options:NSStringDrawingTruncatesLastVisibleLine|NSStringDrawingUsesLineFragmentOrigin|NSStringDrawingUsesFontLeading
                               attributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIFont systemFontOfSize:fontSize],NSFontAttributeName, nil]
                                  context:NULL].size;
    }
    
    return size.width;
}

- (CGFloat)getStringHeightWithWidth:(CGFloat)width fontSize:(NSInteger)fontSize{
    CGSize size  = CGSizeMake(0, 0);
    if (![self isKindOfClass:[NSNull class]] && ![self isEqualToString:@""]) {
        size = [self boundingRectWithSize:CGSizeMake(width, MAXFLOAT)
                                  options:NSStringDrawingTruncatesLastVisibleLine|NSStringDrawingUsesLineFragmentOrigin|NSStringDrawingUsesFontLeading
                               attributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIFont systemFontOfSize:fontSize],NSFontAttributeName, nil]
                                  context:NULL].size;
    }
    
    return size.height;
}

+ (NSString*) getSecrectStringWithPhoneNumber:(NSString*)phoneNum
{
    NSMutableString *newStr = [NSMutableString stringWithString:phoneNum];
    NSRange range = NSMakeRange(3, 4);
    [newStr replaceCharactersInRange:range withString:@"****"];
    return newStr;
}

-(void)callPhone{
    NSString *callPhone = [NSString stringWithFormat:@"telprompt://%@", self];
    NSComparisonResult compare = [[UIDevice currentDevice].systemVersion compare:@"10.0"];
    if (compare == NSOrderedDescending || compare == NSOrderedSame) {
        /// 大于等于10.0系统使用此openURL方法
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:callPhone] options:@{} completionHandler:nil];
    } else {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:callPhone]];
    }
}

+ (NSString *)getNowDateTimeInterval{
    return [NSString stringWithFormat:@"%lld", (long long)(double)[[NSDate date] timeIntervalSince1970]];
}

+ (NSString *)getDateTimeIntervalWithDate:(NSDate*)date{
       return [NSString stringWithFormat:@"%lld", (long long)(double)[date timeIntervalSince1970]];
}

//获取用户的ADFA
+ (NSString *) getAdvertisingIdentifier {
    return [[[ASIdentifierManager sharedManager] advertisingIdentifier] UUIDString];
}

//获取当前设备的UDID
+ (NSString*)getCurrentDeviceUDID{
    
    NSString *uuid = [[[[UIDevice currentDevice] identifierForVendor] UUIDString] stringByReplacingOccurrencesOfString:@"-" withString:@""];
    
    return uuid;
}

//获取当前设备类型如ipod，iphone，ipad
+ (NSString *)deviceType {
    struct utsname systemInfo;
    uname(&systemInfo);
    
    return [NSString stringWithCString:systemInfo.machine encoding:NSUTF8StringEncoding];
}

- (NSString *)getBalanceStrFromeIntnetStr{
    return [NSString stringWithFormat:@"%.2f",[self intValue]/100.f];
}

//电话号码中间4位****显示
- (NSString *)getSecrectPhoneNumber{
    return [NSString getSecrectStringWithPhoneNumber:self];
}


@end
