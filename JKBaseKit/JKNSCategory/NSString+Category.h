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

//电话号码中间4位****显示
+ (NSString*) getSecrectStringWithPhoneNumber:(NSString*)phoneNum;

+ (NSString *)getNowDateTimeInterval;

+ (NSString *)getDateTimeIntervalWithDate:(NSDate*)date;

@end
