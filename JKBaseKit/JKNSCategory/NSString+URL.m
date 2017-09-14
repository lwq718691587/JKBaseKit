//
//  NSString+URL.m
//  JianKeDoctor
//
//  Created by lijiawei on 2017/3/18.
//  Copyright © 2017年 lijiawei. All rights reserved.
//

#import "NSString+URL.h"

@implementation NSString (URL)

- (NSString *)URLEncodedString{
    
    NSString *charactersToEscape = @"!$&'()*+,-./:;=?@_~%#[] ";
    NSCharacterSet *allowedCharacters = [[NSCharacterSet characterSetWithCharactersInString:charactersToEscape] invertedSet];
    NSString *encodedString = [self stringByAddingPercentEncodingWithAllowedCharacters:allowedCharacters];
    return encodedString;
}

- (NSString *)URLEncodedString_full{
    NSString *charactersToEscape = @"'\n'\"\{}!$&'()*+,-./:;=?@_~%#[] ";
    NSCharacterSet *allowedCharacters = [[NSCharacterSet characterSetWithCharactersInString:charactersToEscape] invertedSet];
    NSString *encodedString = [self stringByAddingPercentEncodingWithAllowedCharacters:allowedCharacters];
    return encodedString;
}

@end
