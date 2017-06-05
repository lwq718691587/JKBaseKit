//
//  NSMutableArray+LoadPlist.h
//  Pods
//
//  Created by 刘伟强 on 2017/6/5.
//
//

#import <Foundation/Foundation.h>

@interface NSMutableArray (LoadPlist)

+ (id) loadFromePlist:(NSString *)plistName withBundleClass:(id)bundleClass bundleName:(NSString *)bundleName;

@end
