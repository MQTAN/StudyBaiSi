//
//  UIBarButtonItem+MQExtension.h
//  BaiSi
//
//  Created by 叉烧肥包 on 15/11/17.
//  Copyright © 2015年 DuoDi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (MQExtension)

+ (instancetype)itemWithImage:(UIImage *)image highImage:(UIImage *)highImage target:(id)target action:(SEL)action;
@end
