//
//  NSDate+MQExtension.m
//  MultiplyThinkingNotGainSister
//
//  Created by tanmanqi on 15/9/18.
//  Copyright (c) 2015年 baidu. All rights reserved.
//

#import "NSDate+MQExtension.h"

@implementation NSDate (MQExtension)
- (NSDateComponents *)intervalToDate:(NSDate *)date{
    //📅对象
    NSCalendar *calendar = [NSCalendar currentCalendar];
    //相比较哪些元素
    NSCalendarUnit units = NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay | NSCalendarUnitHour | NSCalendarUnitMinute | NSCalendarUnitSecond;
    //比较
    return [calendar components:units fromDate:self toDate:date options:0];
}

- (NSDateComponents *)intervalToNow{
    return [self intervalToDate:[NSDate date]];
}
- (BOOL)isThisYear{
    NSCalendar *calendar = [NSCalendar currentCalendar];
    //获得年
    NSInteger nowYear = [calendar component:NSCalendarUnitYear fromDate:[NSDate date]];
    NSInteger selfYear = [calendar component:NSCalendarUnitYear fromDate:self];
    return (nowYear == selfYear);
}

- (BOOL)isToday{
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSCalendarUnit unit = NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay;
    NSDateComponents *nowComp = [calendar components:unit fromDate:[NSDate date]];
    NSDateComponents *selfComp = [calendar components:unit fromDate:self];
    return nowComp.year == selfComp.year
        && nowComp.month == selfComp.month
    && nowComp.day == selfComp.day;

    
}

- (BOOL)isYesterday{
    // now : 2015-02-01 00:01:05 -->  2015-02-01
    // self : 2015-01-31 23:59:10 --> 2015-01-31

    NSDateFormatter *fmt = [[NSDateFormatter alloc] init];
    fmt.dateFormat = @"yyyy-MM-dd";

    // 获得只有年月日的时间
    NSString *nowString = [fmt stringFromDate:[NSDate date]];
    NSDate *nowDate = [fmt dateFromString:nowString];

    NSString *selfString = [fmt stringFromDate:self];
    NSDate *selfDate = [fmt dateFromString:selfString];

    // 比较
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSCalendarUnit unit = NSCalendarUnitDay | NSCalendarUnitMonth | NSCalendarUnitYear;

    NSDateComponents *cmps = [calendar components:unit fromDate:selfDate toDate:nowDate options:0];

    return cmps.year == 0
    && cmps.month == 0
    && cmps.day == 1;

}
- (BOOL)isTomorrow{

    NSDateFormatter *fmt = [[NSDateFormatter alloc] init];
    fmt.dateFormat = @"yyyy-MM-dd";

    // 获得只有年月日的时间
    NSString *nowString = [fmt stringFromDate:[NSDate date]];
    NSDate *nowDate = [fmt dateFromString:nowString];

    NSString *selfString = [fmt stringFromDate:self];
    NSDate *selfDate = [fmt dateFromString:selfString];

    // 比较
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSCalendarUnit unit = NSCalendarUnitDay | NSCalendarUnitMonth | NSCalendarUnitYear;

    NSDateComponents *cmps = [calendar components:unit fromDate:selfDate toDate:nowDate options:0];

    return cmps.year == 0
    && cmps.month == 0
    && cmps.day == -1;

}
@end
