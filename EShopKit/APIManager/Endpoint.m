//
// Created by Ricardo Frade on 30/03/2018.
// Copyright (c) 2018 Ricardo Frade. All rights reserved.
//

#import "Endpoint.h"
#import "GamesResponse.h"

@implementation Endpoint

- (Class)modelClass {
    return GamesResponse.class;
}

- (NSString *)method {
    return @"GET";
}

- (NSString *)path {
    return @"/en/select";
}

- (NSDictionary *)parameters {
    return @{
            @"fq": @"type:GAME AND system_type:nintendoswitch* AND product_code_txt:*",
            @"q": @"*",
            @"rows": @9999,
            @"start": @0,
            @"sort": @"sorting_title asc",
            @"wt": @"json"
    };
}

@end
