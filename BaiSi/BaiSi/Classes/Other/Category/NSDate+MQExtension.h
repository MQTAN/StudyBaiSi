//
//  NSDate+MQExtension.h
//  MultiplyThinkingNotGainSister
//
//  Created by tanmanqi on 15/9/18.
//  Copyright (c) 2015年 baidu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (MQExtension)
- (NSDateComponents *)intervalToDate:(NSDate *)date;

- (NSDateComponents *)intervalToNow;
/**
 *  是否为今年
 */
- (BOOL)isThisYear;
/**
 *  是否是今天
 */
- (BOOL)isToday;
/**
 *  是否为明天
 */
- (BOOL)isTomorrow;
/**
 *  是否是昨天
 */
- (BOOL)isYesterday;
@end
