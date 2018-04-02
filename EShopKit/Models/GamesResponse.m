//
//  Created by Ricardo Frade on 31/03/2018.
//  Copyright © 2018 Ricardo Frade. All rights reserved.
//

#import "GamesResponse.h"
#import "GameModel.h"

@implementation GamesResponse

+ (NSDictionary *)modelCustomPropertyMapper {
    return @{
            @"offset": @"response.start",
            @"total": @"response.numFound",
            @"games": @"response.docs"
    };
}

+ (NSDictionary *)modelContainerPropertyGenericClass {
    return @{
            @"games": GameModel.class
    };
}

@end
