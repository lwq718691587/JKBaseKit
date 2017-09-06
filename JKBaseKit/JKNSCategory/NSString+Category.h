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

//当前时间戳
+ (NSString *)getNowDateTimeInterval;
//获取NSDate的时间戳
+ (NSString *)getDateTimeIntervalWithDate:(NSDate*)date;

//获取用户的ADFA
+ (NSString *) getAdvertisingIdentifier;

//获取当前设备的UDID
+ (NSString*)getCurrentDeviceUDID;

//获取当前设备类型如ipod，iphone，ipad
+ (NSString *)deviceType;



@end
