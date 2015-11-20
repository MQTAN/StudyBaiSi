//
//  MQWebViewController.h
//  BaiSi
//
//  Created by 叉烧肥包 on 15/11/20.
//  Copyright © 2015年 DuoDi. All rights reserved.
//

#import <UIKit/UIKit.h>
@class MQSquare;
@interface MQWebViewController : UIViewController

/**数据模型,从按钮处传过来的,里面有按钮文字 + http地址*/
@property(nonatomic, strong) MQSquare *square;

@end
