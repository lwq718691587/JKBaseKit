//
//  JKPharmacListByCategoryRequest.h
//  JianKeDoctor
//
//  Created by 刘伟强 on 2017/3/18.
//  Copyright © 2017年 lijiawei. All rights reserved.
//  分类药品列表

#import "BGNetwork.h"

@interface JKPharmacListByCategoryRequest : BGNetworkRequest


/**
 分类药品列表接口

 @param pageNumber 页码

 @return <#return value description#>
 */
-(instancetype)initWithCategory:(NSString *)category
                     pageNumber:(NSInteger )pageNumber;



@end
