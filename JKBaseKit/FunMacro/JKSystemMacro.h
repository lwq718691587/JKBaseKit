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
//获取keyWindow
#define KeyWindow                               [[UIApplication sharedApplication] keyWindow]
//屏幕宽
#define kMainScreenWidth                        ([UIScreen mainScreen].bounds).size.width
//屏幕高
#define kMainScreenHeight                       ([UIScreen mainScreen].bounds).size.height
#define kTabBarHeight                           49.0f
#define kNaviBarHeight                          44.0f
#define kHeightFor4InchScreen                   568.0f
#define kHeightFor3p5InchScreen                 480.0f

#define kStatusBarHeight                        [UIApplication sharedApplication].statusBarFrame.size.height
//颜色
#define HexColor(hexString)                     [UIColor colorWithHexString:hexString]

#define HexColorAlpha(hexString,alpha)          [UIColor colorWithHexString:hexString andAlpha:alpha]

#define RGBA(r,g,b,a)                           [UIColor colorWithRed:(float)r/255.0f green:(float)g/255.0f blue:(float)b/255.0f alpha:a]
#define RGB(r, g, b)                            [UIColor colorWithRed:(float)r/255.0f green:(float)g/255.0f blue:(float)b/255.0f alpha:1.0f]

#ifdef DEBUG
    #define NSLog(...) NSLog(__VA_ARGS__) //测试环境输出
#else
    #define NSLog(...)
#endif


#endif /* SystemMacro_h */
