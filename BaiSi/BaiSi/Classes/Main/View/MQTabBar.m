//
//  MQTabBar.m
//  BaiSi
//
//  Created by 叉烧肥包 on 15/11/17.
//  Copyright © 2015年 DuoDi. All rights reserved.
//

#import "MQTabBar.h"
#import "MQPublishViewController.h"
#define MQTabBarSubviewsCount 5
@interface MQTabBar()
@property(nonatomic, weak) UIButton *publishBtn;

@end
@implementation MQTabBar

- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        UIButton *pulbishBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        self.publishBtn = pulbishBtn;
        [pulbishBtn setBackgroundImage:[UIImage imageNamed:@"tabBar_publish_icon"] forState:UIControlStateNormal];
        [pulbishBtn setBackgroundImage:[UIImage imageNamed:@"tabBar_publish_click_icon"] forState:UIControlStateSelected];
        [pulbishBtn sizeToFit];
        [self addSubview:pulbishBtn];
        
        [pulbishBtn addTarget:self action:@selector(publishBtnClick:) forControlEvents:UIControlEventTouchUpInside];
        
    }
    return self;
}
- (void)layoutSubviews{
    [super layoutSubviews];
    //调整底部tabBar控件的位置
    CGFloat width = self.width;
    CGFloat height = self.height;
    NSInteger index = 0;
    self.publishBtn.center = CGPointMake(width * 0.5, height * 0.5);
    CGFloat tabBarBtnW = width / MQTabBarSubviewsCount;
    CGFloat tabBarBtnH = height;
    CGFloat tabBarBtnY = 0;
    CGFloat tabBarButX = 0;
    //首先是确定中间控件的frame,然后通过遍历系统的子控件,修改它的frame.
    for (UIView *tabBarBtn in self.subviews) {
        if (![tabBarBtn isKindOfClass:NSClassFromString(@"UITabBarButton")]) {
            continue;
        }
        //计算按钮的x
        tabBarButX = index * tabBarBtnW;
        if (index >= 2) {
            tabBarButX += tabBarBtnW;
        }
        tabBarBtn.frame = CGRectMake(tabBarButX, tabBarBtnY, tabBarBtnW, tabBarBtnH);
        index++;
    }
}
#pragma mark - 发布按钮的点击
- (void)publishBtnClick:(UIButton *)publishBtn{
    MQPublishViewController *pulishVC = [[MQPublishViewController alloc] init];
    [self.window.rootViewController presentViewController:pulishVC animated:YES completion:nil];
}
@end
