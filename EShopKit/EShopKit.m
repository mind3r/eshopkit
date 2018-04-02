//
//  Created by Ricardo Frade on 31/03/2018.
//  Copyright © 2018 Ricardo Frade. All rights reserved.
//

#import <EShopKit/EShopKit.h>
#import "MainAssembly.h"
#import "NetworkAssembly.h"

@implementation EShopKit : NSObject

- (instancetype)init {
    if (self = [super init]) {
        MainAssembly *assembly = [[MainAssembly new] activatedWithCollaboratingAssemblies:@[
                [NetworkAssembly new]
        ]];
        _api = assembly.api;
    }
    return self;
}

- (void)dealloc {
    _api = nil;
}

@end
