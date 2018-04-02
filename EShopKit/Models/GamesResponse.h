//
//  Created by Ricardo Frade on 31/03/2018.
//  Copyright © 2018 Ricardo Frade. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Game.h"

@interface GamesResponse : NSObject

@property(nonatomic, copy) NSArray<id <Game>> *games;
@property(nonatomic, assign) int offset;
@property(nonatomic, assign) int total;

@end
