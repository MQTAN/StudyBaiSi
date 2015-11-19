//
//  MQMeButton.h
//  BaiSi
//
//  Created by 叉烧肥包 on 15/11/19.
//  Copyright © 2015年 DuoDi. All rights reserved.
//

#import <UIKit/UIKit.h>
@class MQSquare;
@interface MQMeButton : UIButton

/**数据模型,显示在button上面的图片数据*/
@property(nonatomic, strong) MQSquare *square;

@end
