//
//  UITextField+MQExtension.m
//  MultiplyThinkingNotGainSister
//
//  Created by tanmanqi on 15/9/13.
//  Copyright (c) 2015年 baidu. All rights reserved.
//

#import "UITextField+MQExtension.h"
/**
 *  设置占位文字颜色
 */
static NSString *const MQPlaceholderColorKey = @"placeholderLabel.textColor";
@implementation UITextField (MQExtension)
- (void)setPlaceholderColor:(UIColor *)placeholderColor{
    BOOL change = NO;
    //保证有占位文字
    if (!self.placeholder) {
        self.placeholder = @" ";
        change = YES;
    }
    //设置占位文字颜色

    [self setValue:placeholderColor forKeyPath:MQPlaceholderColorKey];
    if (change) {
        self.placeholder = nil;
    }
}
- (UIColor *)placeholderColor{
    return [self valueForKeyPath:MQPlaceholderColorKey];
}
@end
