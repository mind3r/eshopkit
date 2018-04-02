//
// Created by Ricardo Frade on 31/03/2018.
// Copyright (c) 2018 Ricardo Frade. All rights reserved.
//

#import "MainAssembly.h"
#import "APIImpl.h"

@implementation MainAssembly

- (id <API>)api {
    return [TyphoonDefinition withClass:APIImpl.class configuration:^(TyphoonDefinition *definition) {
        definition.scope = TyphoonScopeWeakSingleton;
        [definition useInitializer:@selector(initWithSessionManager:) parameters:^(TyphoonMethod *initializer) {
            [initializer injectParameterWith:self.networkAssembly.sessionManager];
        }];
    }];
}

@end
