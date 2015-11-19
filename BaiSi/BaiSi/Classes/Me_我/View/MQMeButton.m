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
    }
    return self;
}

- (void)setSquare:(MQSquare *)square{
    _square = square;
    [self setTitle:square.name forState:UIControlStateNormal];
    
}
@end
