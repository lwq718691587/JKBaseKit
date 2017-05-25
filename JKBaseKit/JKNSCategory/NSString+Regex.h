//
//  NSString+Regex.h
//  JKHelpertToolDemo
//
//  Created by 李里 on 2017/5/3.
//  Copyright © 2017年 李里. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Regex)

/**
 *  验证字符串是否是电话号码
 */
-( BOOL )validatePhoneNumber;

/**
 *  匹配URL
 */
-(BOOL)isValidUrl;

/**
 *  匹配邮箱
 */
-(BOOL)isValidEmail;

/**
 *  匹配MAC地址
 */
- (BOOL)isMacAddress;

/**
 *  纯汉字
 */
- (BOOL)isValidChinese;

/**
 *  邮政编码
 */
- (BOOL)isValidPostalcode;

/**
 *  工商税号
 */
- (BOOL)isValidTaxNo;

/**
 *  IP地址
 */
- (BOOL)isIPAddress;

/**
 *  身份证号码
 */
+ (BOOL)accurateVerifyIDCardNumber:(NSString *)value;
@end
