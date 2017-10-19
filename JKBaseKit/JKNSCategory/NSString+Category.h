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

@end
