//
// Created by Ricardo Frade on 29/03/2018.
// Copyright (c) 2018 Ricardo Frade. All rights reserved.
//

#import <YYModel/YYModel.h>
#import "SessionManagerImpl.h"
#import "GamesResponse.h"

@implementation SessionManagerImpl

- (nullable NSURLSessionDataTask *)request:(Endpoint *)request completion:(nullable void (^)(id _Nullable, NSError *_Nullable))completion {
    NSString *url = [NSURL URLWithString:request.path relativeToURL:self.baseURL].absoluteString;
    NSMutableURLRequest *req = [self.requestSerializer requestWithMethod:request.method URLString:url parameters:request.parameters error:nil];
    [req setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    return [self dataTaskWithRequest:req uploadProgress:nil downloadProgress:nil completionHandler:^(NSURLResponse *response, id responseObject, NSError *error) {
        id data = [self response:responseObject class:request.modelClass];
        completion(data, error);
    }];
}

- (nullable id)response:(id)object class:(Class)modelClass {
    if ([object isKindOfClass:NSDictionary.class]) {
        return [modelClass yy_modelWithJSON:object];
    }
    if ([object isKindOfClass:NSArray.class]) {
        return [NSArray yy_modelArrayWithClass:modelClass json:object];
    }
    return nil;
}

@end
