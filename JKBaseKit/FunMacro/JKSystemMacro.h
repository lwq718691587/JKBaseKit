//
//  SystemMacro.h
//  newProjcet
//
//  Created by lijiawei on 16/6/6.
//  Copyright © 2016年 SanShiChuangXiang. All rights reserved.
//

#ifndef SystemMacro_h
#define SystemMacro_h

#import "JKBaseKit.h"

/** 当前系统版本 */
#define CurrentSystem                           [[[UIDevice currentDevice] systemVersion] floatValue]
/** 获取APP的版本号 */
#define kSoftwareVersion                        ([[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleShortVersionString"])
/** 获取app内部的版本号 */
#define kBuildwareVersion                       ([[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleVersion"])
/**获取app的名称**/
#define kBundleDisplayName                      ([[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleDisplayName"])


#ifdef DEBUG
    #define NSLog(...) NSLog(__VA_ARGS__) //测试环境输出
#else
    #define NSLog(...)
#endif


#endif /* SystemMacro_h */
