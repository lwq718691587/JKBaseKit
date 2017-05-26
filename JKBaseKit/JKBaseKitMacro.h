//
//  JKBaseKitMacro.h
//  Pods
//
//  Created by 刘伟强 on 2017/5/26.
//
//

#ifndef JKBaseKitMacro_h
#define JKBaseKitMacro_h

/// UIDevice
// 当前系统版本
#define jkCurrentSystem      [[[UIDevice currentDevice] systemVersion] floatValue]


/// NSBundle
// 获取APP的版本号
#define jkSoftwareVersion    ([[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleShortVersionString"])
// 获取app内部的版本号
#define jkBuildwareVersion   ([[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleVersion"])
// 获取app的名称
#define jkBundleDisplayName  ([[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleDisplayName"])


/// NSLog
#ifdef DEBUG
#define NSLog(...)  NSLog(@"%s 第%d行 \n %@\n\n",__func__,__LINE__,[NSString stringWithFormat:__VA_ARGS__]) //测试环境输出
#else
#define NSLog(...)
#endif

/// CircularReference
#define jkWeak(obj) autoreleasepool{} __weak typeof(obj) obj##Weak = obj;
#define jkStrong(obj) autoreleasepool{} __strong typeof(obj) obj = obj##Weak;


/// UserDefaults
#define UserDefaults(object, key)    [[NSUserDefaults standardUserDefaults] setObject:@"object" forKey:@"key"]; \
                                     [[NSUserDefaults standardUserDefaults] synchronize];
#define UerDefaults(key)             [[NSUserDefaults standardUserDefaults] objectForKey:key];


/// NSDictionary
#define jkDictObject(object)  (object == nil ? [NSNull null] : object)


/// Block
#define jkBLOCK_EXE(block)  if(block) {__VA_ARGS__};

/// GCD
#define jkDispatch_main_safe(block, isSync)   \
if ([NSThread isMainThread]) {                \
     jkBlock(block);                          \
} else {                                      \
    if (isSync) {                             \
        dispatch_sync(dispatch_get_main_queue(), block);  \
    } else {                                  \
        dispatch_async(dispatch_get_main_queue(), block); \
    }                                          \
}

#define jkVariableGrgument(value , string )    \
do {                                           \
    if (value != nil) {                        \
       va_list args;                           \
       va_start(args, value);                  \
       *string = [[NSString alloc] initWithFormat:value arguments:args];  \
       va_end(args);                           \
    }                                          \
} while (0)


/// Rect
#define jkRectSize(origin, w, h) ((CGRect){.origin = origin, .size = { w, h}})
#define jkRectOrigin(x, y, size)   ((CGRect){.origin = {x, y}, .size = size})

#endif /* JKBaseKitMacro_h */
