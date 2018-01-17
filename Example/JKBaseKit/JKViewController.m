//
//  JKViewController.m
//  JKBaseKit
//
//  Created by liuweiqiang on 05/22/2017.
//  Copyright (c) 2017 liuweiqiang. All rights reserved.
//

#import "JKViewController.h"

#import <JKBaseKit/JKBaseKit.h>

@interface JKViewController ()

@end

@implementation JKViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSLog(@"%@",jkSoftwareVersion);
    
//    NSString *str = [NSString getDateString:@"1508408476000" format:@"YYYY-MM-dd HH:mm:ss"];
//    NSString *str2 = [NSString getTimestamp:@"2017-09-09 05:46" formatter:@"YYYY-MM-dd HH:mm"];
    
    NSString *str3 = [NSString agoTime:1415952921000];
    NSLog(@"%@",str3);
    
    if ([@"16622090908" validatePhoneNumber]) {
        NSLog(@"合法");
    }else{
        NSLog(@"非法");
    }
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
