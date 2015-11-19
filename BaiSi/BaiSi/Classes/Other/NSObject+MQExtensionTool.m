//
//  NSObject+MQExtensionTool.m
//  BaiSi
//
//  Created by 叉烧肥包 on 15/11/19.
//  Copyright © 2015年 DuoDi. All rights reserved.
//

#import "NSObject+MQExtensionTool.h"
#import <MJExtension/MJExtension.h>
@implementation NSObject (MQExtensionTool)
/**
 *  通过字典数组来创建一个模型数组
 *  @param keyValuesArray 字典数组(可以是NSDictionary、NSData、NSString)
 *  @return 模型数组
 */

+ (NSMutableArray *)mq_objectArrayWithKeyValuesArray:(NSArray *)keyValuesArray{
    return [self mj_objectArrayWithKeyValuesArray:keyValuesArray];
}
@end
