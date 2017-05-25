//
//  JKMacro.h
//  JKBaseKit
//
//  Created by A on 2017/5/25.
//  Copyright © 2017年 liuweiqiang. All rights reserved.
//

#ifndef JKMacro_h
#define JKMacro_h


/// NSBundle
/** 当前系统版本 */
#define jkCurrentSystem                          [[[UIDevice currentDevice] systemVersion] floatValue]
/** 获取APP的版本号 */
#define jkSoftwareVersion                        ([[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleShortVersionString"])
/** 获取app内部的版本号 */
#define jkBuildwareVersion                       ([[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleVersion"])
/**获取app的名称**/
#define jkBundleDisplayName                      ([[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleDisplayName"])


/// NSLog
#ifdef DEBUG
#define NSLog(...) NSLog(__VA_ARGS__) //测试环境输出
#else
#define NSLog(...)
#endif


/// Rect
#define jkRect(origin, w, h) ((CGRect){.origin = origin, .size = { w, h}})
#define jkRect(x, y, size)   ((CGRect){.origin = {x, y}, .size = size})



#endif /* JKMacro_h */
