//
//  MQMeButton.m
//  BaiSi
//
//  Created by 叉烧肥包 on 15/11/19.
//  Copyright © 2015年 DuoDi. All rights reserved.
//

#import "MQMeButton.h"
#import "MQSquare.h"

#import "UIButton+WebCache.h"
@implementation MQMeButton
- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        [self setBackgroundColor:MQRandomColor];
        self.titleLabel.textAlignment = NSTextAlignmentCenter;
        self.titleLabel.font = [UIFont systemFontOfSize:15];
    }
    return self;
}

- (void)setSquare:(MQSquare *)square{
    _square = square;
    [self setTitle:square.name forState:UIControlStateNormal];
    [self sd_setImageWithURL:[NSURL URLWithString:square.icon] forState:UIControlStateNormal];
}

- (void)layoutSubviews{
    [super layoutSubviews];
    
    self.imageView.y = 1;
    self.imageView.width = self.width * 0.6;
    self.imageView.centerX = self.width * 0.5;
#pragma mark- 为什么这样设置就是不行???
    //TODO: 以后能够解决这个问题?
//    self.imageView.centerX = self.centerX;
    self.imageView.height = self.imageView.width;
//    self.imageView.x = 0;
    self.titleLabel.y = CGRectGetMaxY(self.imageView.frame);
    self.titleLabel.width = self.width;
    self.titleLabel.height = self.height - self.imageView.height;
    self.titleLabel.x = 0;
//    MQLogLine(@"%@", NSStringFromCGRect(self.frame));
//    MQLogLine(@"%f", self.centerX);
//    MQLogLine(@"imageviewCenterX = %lf", self.imageView.centerX);
    
}
/**
 *  通过这个方法,能够实现改变这个控件的frame.达到有分割线的效果
 */
- (void)setFrame:(CGRect)frame{
    frame.size.height -= 1;
    frame.size.width -= 1;
    [super setFrame:frame];
}
@end
