//
// Created by Ricardo Frade on 31/03/2018.
// Copyright (c) 2018 Ricardo Frade. All rights reserved.
//

#import "APIImpl.h"
#import "GamesResponse.h"
#import "Endpoint.h"
#import "SessionManagerImpl.h"

@interface APIImpl ()

@property(nonatomic, strong) SessionManagerImpl *sessionManager;

@end

@implementation APIImpl

- (instancetype)initWithSessionManager:(SessionManagerImpl *)sessionManager {
    if (self = [super init]) {
        _sessionManager = sessionManager;
    }
    return self;
}

- (void)getGamesEU:(void (^)(GamesResult *))response {
    NSURLSessionDataTask *task = [_sessionManager request:[Endpoint new] completion:^(id data, NSError *error) {
        GamesResponse *gmr = (GamesResponse *) data;
        GamesResult *gr = [[GamesResult alloc] initStatusCode:0 data:gmr.games];
        response(gr);
    }];
    [task resume];
}

@end