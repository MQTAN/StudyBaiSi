//
//  UITableViewCell+MQExtension.h
//  MultiplyThinkingNotGainSister
//
//  Created by tanmanqi on 15/9/18.
//  Copyright (c) 2015年 baidu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITableViewCell (MQExtension)
/**
 * 设置工具条按钮的文字
 */
- (void)setupButtonTitle:(UIButton *)button number:(NSInteger)number placeholder:(NSString *)placeholder;
@end
