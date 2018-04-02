//
//  Created by Ricardo Frade on 31/03/2018.
//  Copyright © 2018 Ricardo Frade. All rights reserved.
//

#import "GamesResult.h"

@implementation GamesResult

- (instancetype)initStatusCode:(NSInteger)statusCode data:(NSArray<id <Game>> *)data {
    if (self = [super initStatusCode:statusCode error:nil]) {
        _data = data;
    }
    return self;
}

@end
