//
// Created by Ricardo Frade on 31/03/2018.
// Copyright (c) 2018 Ricardo Frade. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Typhoon/Typhoon.h>
#import "NetworkAssembly.h"
#import "API.h"

@interface MainAssembly : TyphoonAssembly

@property(nonatomic, strong, readonly) NetworkAssembly *networkAssembly;

- (id <API>)api;

@end
