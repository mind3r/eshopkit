//
// Created by Ricardo Frade on 30/03/2018.
// Copyright (c) 2018 Ricardo Frade. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Result : NSObject

@property(nonatomic, assign) NSInteger statusCode;

@property(nonatomic, strong) NSError *error;

- (instancetype)initStatusCode:(NSInteger)statusCode error:(NSError *)error;

@end
