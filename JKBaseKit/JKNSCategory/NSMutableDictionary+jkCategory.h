//
//  NSMutableDictionary+jkCategory.h
//  JKBaseKit
//
//  Created by 刘伟强 on 2018/1/22.
//

#import <Foundation/Foundation.h>

@interface NSMutableDictionary (jkCategory)

/**
 字典转json字符串
 
 @return json字符串
 */
- (NSString *)toJsonStr;

@end
