//
// Created by Ricardo Frade on 30/03/2018.
// Copyright (c) 2018 Ricardo Frade. All rights reserved.
//

#import "Result.h"

@implementation Result

- (instancetype)init {
    return [self initStatusCode:000 error:nil];
}

- (instancetype)initStatusCode:(NSInteger)statusCode error:(NSError *)error {
    if (self = [super init]) {
        _statusCode = statusCode;
        _error = error;
    }
    return self;
}

@end
