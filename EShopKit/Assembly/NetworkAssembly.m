//
// Created by Ricardo Frade on 30/03/2018.
// Copyright (c) 2018 Ricardo Frade. All rights reserved.
//

#import "NetworkAssembly.h"
#import "SessionManagerImpl.h"

@implementation NetworkAssembly

- (id <SessionManager>)sessionManager {
    return [TyphoonDefinition withClass:SessionManagerImpl.class configuration:^(TyphoonDefinition *definition) {
        definition.scope = TyphoonScopeWeakSingleton;
        [definition useInitializer:@selector(initWithBaseURL:sessionConfiguration:) parameters:^(TyphoonMethod *initializer) {
            [initializer injectParameterWith:self.baseURL];
            [initializer injectParameterWith:self.sessionConfiguration];
        }];
        [definition injectProperty:@selector(requestSerializer) with:self.requestSerializer];
        [definition injectProperty:@selector(responseSerializer) with:self.responseSerializer];
    }];
}

- (NSURL *)baseURL {
    return [TyphoonDefinition withClass:NSURL.class configuration:^(TyphoonDefinition *definition) {
        definition.scope = TyphoonScopeWeakSingleton;
        [definition useInitializer:@selector(URLWithString:) parameters:^(TyphoonMethod *initializer) {
            [initializer injectParameterWith:@"https://search.nintendo-europe.com"];
        }];
    }];
}

- (NSURLSessionConfiguration *)sessionConfiguration {
    return [TyphoonDefinition withClass:NSURLSessionConfiguration.class configuration:^(TyphoonDefinition *definition) {
        definition.scope = TyphoonScopeWeakSingleton;
        [definition useInitializer:@selector(defaultSessionConfiguration)];
    }];
}

- (AFHTTPRequestSerializer *)requestSerializer {
    return [TyphoonDefinition withClass:AFJSONRequestSerializer.class configuration:^(TyphoonDefinition *definition) {
        definition.scope = TyphoonScopeWeakSingleton;
        [definition useInitializer:@selector(serializer)];
    }];
}

- (AFHTTPResponseSerializer *)responseSerializer {
    return [TyphoonDefinition withClass:AFJSONResponseSerializer.class configuration:^(TyphoonDefinition *definition) {
        definition.scope = TyphoonScopeWeakSingleton;
        [definition useInitializer:@selector(serializer)];
    }];
}

@end
