//
// Created by Ricardo Frade on 31/03/2018.
// Copyright (c) 2018 Ricardo Frade. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SessionManagerImpl.h"
#import "API.h"

@interface APIImpl : NSObject <API>

- (instancetype)initWithSessionManager:(SessionManagerImpl *)sessionManager;

@end