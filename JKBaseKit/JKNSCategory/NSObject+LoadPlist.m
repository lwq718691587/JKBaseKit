//
//  NSObject+LoadPlist.m
//  Pods
//
//  Created by 刘伟强 on 2017/6/5.
//
//

#import "NSObject+LoadPlist.h"

@implementation NSObject (LoadPlist)

+ (id) loadFromePlist:(NSString *)plistName withBundleClass:(id)bundleClass bundleName:(NSString *)bundleName;{
    
    NSBundle *bundle = [NSBundle bundleWithURL:[[NSBundle bundleForClass:[bundleClass class]] URLForResource:bundleName withExtension:@"bundle"]];
    NSString *plistPath = [bundle pathForResource:plistName ofType:@"plist"];
    id data = [[NSMutableDictionary alloc] initWithContentsOfFile:plistPath];
    return data;
}

@end
