//
// Created by Ricardo Frade on 29/03/2018.
// Copyright (c) 2018 Ricardo Frade. All rights reserved.
//

#import "GameModel.h"

@implementation GameModel

@synthesize title;
@synthesize price;
@synthesize discount;

+ (NSDictionary *)modelCustomPropertyMapper {
    return @{
            @"title": @"title",
            @"price": @"price_lowest_f",
            @"discount": @"price_has_discount_b",
    };
}

@end
