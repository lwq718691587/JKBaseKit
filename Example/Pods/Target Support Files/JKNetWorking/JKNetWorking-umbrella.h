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

#import "BGAFHTTPClient.h"
#import "BGAFRequestSerializer.h"
#import "BGAFResponseSerializer.h"
#import "BGBatchRequest.h"
#import "BGDownloadRequest.h"
#import "BGNetworkCache.h"
#import "BGNetworkConfiguration.h"
#import "BGNetworkManager.h"
#import "BGNetworkRequest.h"
#import "BGUploadRequest.h"
#import "BGUtilFunction.h"
#import "JKNetWorking.h"

FOUNDATION_EXPORT double JKNetWorkingVersionNumber;
FOUNDATION_EXPORT const unsigned char JKNetWorkingVersionString[];

