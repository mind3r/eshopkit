//
// Created by Ricardo Frade on 31/03/2018.
// Copyright (c) 2018 Ricardo Frade. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Endpoint.h"

@protocol SessionManager <NSObject>

- (nullable NSURLSessionDataTask *)request:(Endpoint *)endpoint completion:(nullable void (^)(id _Nullable, NSError *_Nullable))completion;

@end