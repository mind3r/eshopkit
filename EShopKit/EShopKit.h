//
//  Created by Ricardo Frade on 31/03/2018.
//  Copyright © 2018 Ricardo Frade. All rights reserved.
//

#import <Foundation/Foundation.h>

//! Project version number for EShopKit.
FOUNDATION_EXPORT double EShopKitVersionNumber;

//! Project version string for EShopKit.
FOUNDATION_EXPORT const unsigned char EShopKitVersionString[];

// In this header, you should import all the public headers of your framework using statements like #import <EShopKit/PublicHeader.h>

#import "API.h"
#import "Result.h"
#import "GamesResult.h"
#import "Game.h"

@interface EShopKit : NSObject

@property(nonatomic, strong) id <API> api;

@end
