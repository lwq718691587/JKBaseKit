#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "JKBaseKit.h"
#import "FastCoder.h"
#import "NSObject+StareValeu.h"
#import "JKBaseKitMacro.h"
#import "NSMutableArray+LoadPlist.h"
#import "NSMutableDictionary+LoadPlist.h"
#import "NSString+Category.h"
#import "NSString+MD5.h"
#import "NSString+Regex.h"
#import "NSString+URL.h"

FOUNDATION_EXPORT double JKBaseKitVersionNumber;
FOUNDATION_EXPORT const unsigned char JKBaseKitVersionString[];

