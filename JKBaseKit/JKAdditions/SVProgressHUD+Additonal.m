//
//  SVProgressHUD+Additonal.m
//  
//
//  Created by 刘伟强 on 2017/4/27.
//
//

#import "SVProgressHUD+Additonal.h"


#define KeyWindow2017_5_16    [[UIApplication sharedApplication] keyWindow]

@implementation SVProgressHUD (Additonal)


+ (void)jk_show{
    [SVProgressHUD setOffsetFromCenter:UIOffsetMake(KeyWindow2017_5_16.width/2, KeyWindow2017_5_16.height/2)];
    [SVProgressHUD setDefaultStyle:SVProgressHUDStyleDark];
    [SVProgressHUD setDefaultMaskType:SVProgressHUDMaskTypeNone];
    [SVProgressHUD setDefaultAnimationType:SVProgressHUDAnimationTypeFlat];
    [SVProgressHUD show];
}

+ (void)jk_dismiss{
    [SVProgressHUD dismiss];
}

+ (void)jk_showSuccessWithStatus:(NSString *)status{
    [SVProgressHUD setOffsetFromCenter:UIOffsetMake(KeyWindow2017_5_16.width/2, KeyWindow2017_5_16.height/2)];
    [SVProgressHUD setDefaultStyle:SVProgressHUDStyleDark];
    [SVProgressHUD setDefaultMaskType:SVProgressHUDMaskTypeNone];
    [SVProgressHUD setDefaultAnimationType:SVProgressHUDAnimationTypeFlat];
    [SVProgressHUD setMinimumDismissTimeInterval:1];
    [SVProgressHUD showSuccessWithStatus:status];
}

+ (void)jk_showErrorWithStatus:(NSString *)status{
    [SVProgressHUD setOffsetFromCenter:UIOffsetMake(KeyWindow2017_5_16.width/2, KeyWindow2017_5_16.height/2)];
    [SVProgressHUD setDefaultStyle:SVProgressHUDStyleDark];
    [SVProgressHUD setDefaultMaskType:SVProgressHUDMaskTypeNone];
    [SVProgressHUD setDefaultAnimationType:SVProgressHUDAnimationTypeFlat];
    [SVProgressHUD setMinimumDismissTimeInterval:1];
    [SVProgressHUD showInfoWithStatus:status];
}



@end
