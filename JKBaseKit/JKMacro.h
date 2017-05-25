//
//  JKMacro.h
//  JKBaseKit
//
//  Created by A on 2017/5/25.
//  Copyright © 2017年 liuweiqiang. All rights reserved.
//

#ifndef JKMacro_h
#define JKMacro_h

/// UI Macro
#define jkScreenWidth        ([UIScreen mainScreen].bounds).size.width

#define jkScreenHeight       ([UIScreen mainScreen].bounds).size.height

#define jkStatusBarHeight    [UIApplication sharedApplication].statusBarFrame.size.height

/// Rect
#define jkRect(origin, w, h) ((CGRect){.origin = origin, .size = { w, h}})
#define jkRect(x, y, size)   ((CGRect){.origin = {x, y}, .size = size})



#endif /* JKMacro_h */
