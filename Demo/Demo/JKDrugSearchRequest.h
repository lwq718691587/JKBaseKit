//
//  JKDrugSearchRequest.h
//  JianKeDoctor
//
//  Created by 刘伟强 on 2017/3/18.
//  Copyright © 2017年 lijiawei. All rights reserved.
//  搜索药品

#import "BGNetwork.h"

@interface JKDrugSearchRequest : BGNetworkRequest



/**
 搜索接口

 @param keyWord 关键字
 @param pn 页数
 @param ps 一页的数量
 @param clientKey 客户端标
 @return <#return value description#>
 */
-(instancetype)initWithkeyWords:(NSString *)keyWord
                             pn:(NSInteger )pn
                             ps:(NSInteger )ps
                      clientKey:(NSString *)clientKey;



@end
