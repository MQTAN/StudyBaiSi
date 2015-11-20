//
//  MQEssenceViewController.m
//  BaiSi
//
//  Created by 叉烧肥包 on 15/11/17.
//  Copyright © 2015年 DuoDi. All rights reserved.
//

#import "MQEssenceViewController.h"
#import "MQTagViewController.h"

@interface MQEssenceViewController ()

@end

@implementation MQEssenceViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setNav];
}
- (void)setNav{
    self.navigationItem.titleView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"MainTitle"]];
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithImage:[UIImage imageNamed:@"MainTagSubIcon"] highImage:[UIImage imageNamed:@"MainTagSubIconClick"] target:self action:@selector(tagClick)];
    self.view.backgroundColor = MQRandomColor;
    
}
#pragma mark- 左边的控制栏按钮
- (void)tagClick{
    MQLog(@"不是你的错,我的错误");
    UIViewController *VC = [[MQTagViewController alloc] init];
    VC.view.backgroundColor = MQRandomColor;
    //导航控制器能够push到下一个控制器
    [self.navigationController pushViewController:VC animated:YES];}


@end
