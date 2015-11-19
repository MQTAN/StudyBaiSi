//
//  MQSquare.h
//  BaiSi
//
//  Created by 叉烧肥包 on 15/11/19.
//  Copyright © 2015年 DuoDi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MQSquare : NSObject

/**图片,按钮的图片*/
@property(nonatomic, copy) NSString *icon;
/**按钮名称*/
@property(nonatomic, copy) NSString *name;
/**点击按钮跳转的路径*/
@property(nonatomic, copy) NSString *url;
@end
