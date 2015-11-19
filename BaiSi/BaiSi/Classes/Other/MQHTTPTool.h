//
//  MQHTTPTool.h
//  BaiSi
//
//  Created by 叉烧肥包 on 15/11/18.
//  Copyright © 2015年 DuoDi. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef void (^MQRequestSuccess)(id responseObject);
typedef void (^MQRequestFailure)(NSError *error);
@interface MQHTTPTool : NSObject

+ (void)GET:(NSString *)url params:(NSDictionary *)params success:(MQRequestSuccess )success failure:(MQRequestFailure)failure;

+ (void)POST:(NSString *)url params:(NSDictionary *)params success:(MQRequestSuccess)success failure:(MQRequestFailure)failure;
@end
