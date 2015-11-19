//
//  UIBarButtonItem+MQExtension.h
//  BaiSi
//
//  Created by 叉烧肥包 on 15/11/17.
//  Copyright © 2015年 DuoDi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (MQExtension)
/**
 *  给导航栏设置左边或者右边的按钮
 *
 *  @param image          普通状态的图片
 *  @param highlightImage 高亮状态的图片
 *  @param target         谁触发
 *  @param sel            调用谁的方法
 *
 *  @return 返回一个控件显示到导航栏左边或者右边
 */

+ (instancetype)itemWithImage:(UIImage *)image highImage:(UIImage *)highImage target:(id)target action:(SEL)action;
@end
