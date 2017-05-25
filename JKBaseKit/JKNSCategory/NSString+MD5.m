//
//  NSString+MD5.m
//  Pods
//
//  Created by 李里 on 2017/5/25.
//
//

#import "NSString+MD5.h"
#import <CommonCrypto/CommonCrypto.h>

@implementation NSString (MD5)

-(NSString *)MD5String{
    
    const char * Cstr = [self UTF8String];
    unsigned char buff[16];
    CC_MD5(Cstr, (CC_LONG)strlen(Cstr), buff);
    NSMutableString *md5String = [NSMutableString string];
    for (int i = 0; i < 16; i ++) {
        [md5String appendFormat:@"%02x",buff[i]];
    }
    return md5String;
}

@end
