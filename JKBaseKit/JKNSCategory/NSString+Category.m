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

#import <DateTools/DateTools.h>

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

//当前时间戳 单位毫秒
+ (NSString *)getNowDateTimeInterval_ms{
    return [NSString stringWithFormat:@"%lld", (long long)(double)[[NSDate date] timeIntervalSince1970] * 1000];
}
//获取NSDate的时间戳 单位 毫秒
+ (NSString *)getDateTimeIntervalWithDate_ms:(NSDate*)date{
    return [NSString stringWithFormat:@"%lld", (long long)(double)[date timeIntervalSince1970] * 1000];
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


+ (NSString *)getDateString:(NSString *)timestamp
                     format:(NSString *)format{
    
    NSTimeInterval time = [timestamp doubleValue]/1000;
    NSDate *date = [NSDate dateWithTimeIntervalSince1970:time];
    NSDateFormatter *dateFormater = [[NSDateFormatter alloc]init];
    [dateFormater setDateFormat:format];
    return [dateFormater stringFromDate:date];
}

+(NSString *)getTimestamp:(NSString *)dateStr
                formatter:(NSString *)formatter{
    
    NSDateFormatter *parser = [[NSDateFormatter alloc] init];
    parser.dateStyle = NSDateFormatterNoStyle;
    parser.timeStyle = NSDateFormatterNoStyle;
    parser.timeZone = [NSTimeZone systemTimeZone];
    parser.dateFormat = formatter;
    NSDate *date = [parser dateFromString:dateStr];
    
    return [NSString getDateTimeIntervalWithDate_ms:date];
}


+ (NSString *)agoTime:(double )timestamp{
    
    NSTimeInterval time = timestamp/1000;
    NSDate *date = [NSDate dateWithTimeIntervalSince1970:time];
    
    NSInteger minutes = (NSInteger )[date minutesAgo];
    
    if (minutes == 0) {
        return @"刚刚";
    }else if (minutes <= 60) {
        return [NSString stringWithFormat:@"%ld分钟前",minutes];
    }else if (minutes > 60 && minutes <= 60 *24 ){
        return [NSString stringWithFormat:@"%ld小时前",(NSInteger)[date hoursAgo]];
    }else if (minutes > 60 * 24 && minutes <= 60 * 24 *2 ){
        return @"昨天";
    }else if (minutes > 60 * 24 * 2 && minutes <= 60 * 24 * 365 ){
        return [NSString getDateString:[NSString stringWithFormat:@"%f",timestamp] format:@"MM月dd日"];
    }else if (minutes > 60 * 24 * 365 && minutes <= 60 * 24 * 365 * 2){
        return @"去年";
    }else{
        return [NSString getDateString:[NSString stringWithFormat:@"%f",timestamp] format:@"YYYY年"];
    }
    
}

@end
