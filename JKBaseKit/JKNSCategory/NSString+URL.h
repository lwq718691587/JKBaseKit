//
//  NSString+URL.h
//  JianKeDoctor
//
//  Created by lijiawei on 2017/3/18.
//  Copyright © 2017年 lijiawei. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (URL)

- (NSString *)URLEncodedString; 
// 包含转义 \n
- (NSString *)URLEncodedString_full;

@end
