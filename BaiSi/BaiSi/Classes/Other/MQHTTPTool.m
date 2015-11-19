//
//  MQHTTPTool.m
//  BaiSi
//
//  Created by 叉烧肥包 on 15/11/18.
//  Copyright © 2015年 DuoDi. All rights reserved.
//

#import "MQHTTPTool.h"

#import <AFNetworking.h>

@implementation MQHTTPTool

+ (void)GET:(NSString *)url params:(NSDictionary *)params success:(MQRequestSuccess)success failure:(MQRequestFailure)failure
{
    [[AFHTTPSessionManager manager] GET:url parameters:params success:^(NSURLSessionDataTask *task, id responseObject) {
        !success ? : success(responseObject);
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        !failure ? : failure(error);
    }];
}

+ (void)POST:(NSString *)url params:(NSDictionary *)params success:(MQRequestSuccess)success failure:(MQRequestFailure)failure
{
    [[AFHTTPSessionManager manager] POST:url parameters:params success:^(NSURLSessionDataTask *task, id responseObject) {
        !success ? : success(responseObject);
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        !failure ? : failure(error);
    }];
}
@end
