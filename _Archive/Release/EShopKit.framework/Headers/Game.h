//
//  Created by Ricardo Frade on 31/03/2018.
//  Copyright © 2018 Ricardo Frade. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Game <NSObject>

@property(nonatomic, copy) NSString *title;
@property(nonatomic, assign) double price;
@property(nonatomic, assign, getter=hasDiscount) BOOL discount;

@end
