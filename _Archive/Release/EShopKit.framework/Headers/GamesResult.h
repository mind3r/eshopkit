//
//  Created by Ricardo Frade on 31/03/2018.
//  Copyright © 2018 Ricardo Frade. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Result.h"
#import "Game.h"

@interface GamesResult : Result

@property(nonatomic, strong) NSArray<id <Game>> *data;

- (instancetype)initStatusCode:(NSInteger)statusCode data:(NSArray<id <Game>> *)data;

@end
