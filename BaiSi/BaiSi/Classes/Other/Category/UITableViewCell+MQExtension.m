//
//  UITableViewCell+MQExtension.m
//  MultiplyThinkingNotGainSister
//
//  Created by tanmanqi on 15/9/18.
//  Copyright (c) 2015年 baidu. All rights reserved.
//

#import "UITableViewCell+MQExtension.h"

@implementation UITableViewCell (MQExtension)
/**
 * 设置工具条按钮的文字
 */
- (void)setupButtonTitle:(UIButton *)button number:(NSInteger)number placeholder:(NSString *)placeholder
{
    if (number >= 10000) {
        [button setTitle:[NSString stringWithFormat:@"%.1f万", number / 10000.0] forState:UIControlStateNormal];
    } else if (number > 0) {
        [button setTitle:[NSString stringWithFormat:@"%zd", number] forState:UIControlStateNormal];
    } else {
        [button setTitle:placeholder forState:UIControlStateNormal];
    }
}
@end
