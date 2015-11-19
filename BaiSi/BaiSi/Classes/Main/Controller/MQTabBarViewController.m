//
//  MQTabBarViewController.m
//  BaiSi
//
//  Created by 叉烧肥包 on 15/11/17.
//  Copyright © 2015年 DuoDi. All rights reserved.
//

#import "MQTabBarViewController.h"
#import "MQNavigationController.h"
#import "MQTabBar.h"
#import "MQEssenceViewController.h"

@interface MQTabBarViewController ()

@end

@implementation MQTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setChildViewController];
    [self setItems];
    [self setValue:[[MQTabBar alloc] init] forKeyPath:@"tabBar"];
}

- (void)setChildViewController{
    //添加子控制器
    [self setOneViewController:[[MQEssenceViewController alloc]init] normalImage:[UIImage imageNamed:@"tabBar_essence_icon"] selectedImage:[UIImage imageNamed:@"tabBar_essence_click_icon"] title:@"精华"];
    
    [self setOneViewController:[[UIViewController alloc] init] normalImage:nil selectedImage:nil title:@"评论"];
    
    [self setOneViewController:[[UIViewController alloc] init] normalImage:nil selectedImage:nil title:@"历史"];
    
    [self setOneViewController:[[UIViewController alloc] init] normalImage:nil selectedImage:nil title:@"关注"];
    
}
- (void)setOneViewController:(UIViewController *)childVC normalImage:(UIImage *)norImage selectedImage:(UIImage *)selImage title:(NSString *)title{
    
    MQNavigationController *nav = [[MQNavigationController alloc] initWithRootViewController:childVC];
    [self addChildViewController:nav];
    nav.tabBarItem.title = title;
    nav.tabBarItem.image = norImage;
    nav.tabBarItem.selectedImage = selImage;
}
- (void)setItems{
    NSMutableDictionary *attri = [NSMutableDictionary dictionary];
    attri[NSFontAttributeName] = [UIFont systemFontOfSize:15];
    attri[NSForegroundColorAttributeName] = [UIColor grayColor];
    NSMutableDictionary *attriSel = [NSMutableDictionary dictionary];
    attriSel[NSForegroundColorAttributeName] = [UIColor redColor];
    UITabBarItem *item = [UITabBarItem appearance];
    [item setTitleTextAttributes:attri forState:UIControlStateNormal];
    [item setTitleTextAttributes:attriSel forState:UIControlStateSelected];
}
@end
