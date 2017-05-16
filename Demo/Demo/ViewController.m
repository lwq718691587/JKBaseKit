//
//  ViewController.m
//  Demo
//
//  Created by 刘伟强 on 2017/4/26.
//  Copyright © 2017年 刘伟强. All rights reserved.
//

#import "ViewController.h"
#import "BGNetwork.h"
#import "JKDrugSearchRequest.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    JKDrugSearchRequest * request = [[JKDrugSearchRequest alloc]initWithkeyWords:@"红花" pn:1 ps:10 clientKey:@"iOS"];
    [request sendRequestWithSuccess:^(BGNetworkRequest * _Nonnull request, id  _Nullable response) {
        
    } businessFailure:^(BGNetworkRequest * _Nonnull request, id  _Nullable response) {
        
    } networkFailure:^(BGNetworkRequest * _Nonnull request, NSError * _Nullable error) {
        
    }];
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
