//
// Created by Ricardo Frade on 30/03/2018.
// Copyright (c) 2018 Ricardo Frade. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Typhoon/Typhoon.h>
#import "SessionManager.h"

@interface NetworkAssembly : TyphoonAssembly

- (id <SessionManager>)sessionManager;

@end
