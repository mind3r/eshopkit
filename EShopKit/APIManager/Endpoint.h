//
// Created by Ricardo Frade on 30/03/2018.
// Copyright (c) 2018 Ricardo Frade. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Endpoint : NSObject

@property(nonatomic, assign) Class modelClass;
@property(nonatomic, copy) NSString *method;
@property(nonatomic, copy) NSString *path;
@property(nonatomic, copy) NSDictionary *parameters;

@end
