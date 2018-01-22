//
//  NSString+Category.h
//  Pods
//
//  Created by 李里 on 2017/5/25.
//
//

#import <Foundation/Foundation.h>

@interface NSString (Category)

// 去掉前后空格
- (NSString *)trimmedString;

// 调整行间距
- (NSMutableAttributedString *)getSpaceStr:(CGFloat)spacing;

// 文字宽高
- (CGFloat)getStringWidthWithHeight:(CGFloat)height fontSize:(NSInteger)fontSize;
- (CGFloat)getStringHeightWithWidth:(CGFloat)width fontSize:(NSInteger)fontSize;
/**
 转换单位 分->元
 */
- (NSString *)getBalanceStrFromeIntnetStr;
//电话号码中间4位****显示
- (NSString *)getSecrectPhoneNumber;

- (void)callPhone;

//电话号码中间4位****显示
+ (NSString*) getSecrectStringWithPhoneNumber:(NSString*)phoneNum;

//当前时间戳 单位秒
+ (NSString *)getNowDateTimeInterval;
//获取NSDate的时间戳 单位秒
+ (NSString *)getDateTimeIntervalWithDate:(NSDate*)date;

//当前时间戳 单位毫秒
+ (NSString *)getNowDateTimeInterval_ms;
//获取NSDate的时间戳 单位 毫秒
+ (NSString *)getDateTimeIntervalWithDate_ms:(NSDate*)date;

//获取用户的ADFA 单位毫秒
+ (NSString *) getAdvertisingIdentifier;

//获取当前设备的UDID
+ (NSString*)getCurrentDeviceUDID;

//获取当前设备类型如ipod，iphone，ipad
+ (NSString *)deviceType;

/**
 时间戳 转换成 时间字符串
 
 @param timestamp 时间戳 （单位 毫秒）
 @param format 格式
 @return 转换后的时间
 */
+ (NSString *)getDateString:(NSString *)timestamp
                    format:(NSString *)format;


/**
 时间字符串 转换成 时间戳(单位 毫秒)
 
 @param dateStr 时间字符串
 @param formatter 格式
 @return 时间戳
 */
+(NSString *)getTimestamp:(NSString *)dateStr
              formatter:(NSString *)formatter;


/**
 XXX 前
 规则： 距当前时间
 
 1小时内，显示为xx分钟前，如34分钟前
 
 1小时以上1天以内，显示为xx小时前，如2小时前
 
 1天以上2天以内的，显示：昨天
 
 间隔超过2天小于1年，显示：xx月xx日，如8月21日
 
 间隔超过1年小于2年，显示：去年
 
 间隔超过2年以上，显示：XXXX年，如2015年

 @param timestamp 时间戳 毫秒
 @return 字符串
 */
+ (NSString *)agoTime:(double )timestamp;

/**
 json字符串 转 字典

 @return <#return value description#>
 */
- (NSDictionary *)jsonStrToDic;

@end
