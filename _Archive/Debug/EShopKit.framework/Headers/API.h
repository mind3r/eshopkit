//
// Created by Ricardo Frade on 30/03/2018.
// Copyright (c) 2018 Ricardo Frade. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GamesResult.h"

@protocol API <NSObject>

- (void)getGamesEU:(void (^)(GamesResult *))response;

@end
