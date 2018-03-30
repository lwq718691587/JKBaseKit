//
//  NSObject+Regex.m
//  JKBaseKit
//
//  Created by 刘伟强 on 2018/3/30.
//

#import "NSObject+Regex.h"

@implementation NSObject (Regex)

-(BOOL)isValidString{
    if (([self isKindOfClass:[NSString class]])) {
        NSString *str = (NSString *)self;
        if (str.length > 0) {
            return YES;
        }else{
            return NO;
        }
    }else{
        return NO;
    }
}

@end
