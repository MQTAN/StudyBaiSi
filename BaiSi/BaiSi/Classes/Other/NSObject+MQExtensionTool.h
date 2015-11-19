//
//  NSObject+MQExtensionTool.h
//  BaiSi
//
//  Created by 叉烧肥包 on 15/11/19.
//  Copyright © 2015年 DuoDi. All rights reserved.
//

#import <Foundation/Foundation.h>

#pragma mark- 主要是对MJExtension框架的封装.
@interface NSObject (MQExtensionTool)
/**
 *  通过字典数组来创建一个模型数组
 *  @param keyValuesArray 字典数组(可以是NSDictionary、NSData、NSString)
 *  @return 模型数组
 */

+ (NSMutableArray *)mq_objectArrayWithKeyValuesArray:(NSArray *)keyValuesArray;
@end
