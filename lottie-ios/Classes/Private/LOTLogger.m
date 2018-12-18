//
//  LOTLogger.m
//  Lottie_iOS
//
//  Created by Zach Zahos on 2018-12-17.
//  Copyright © 2018 Airbnb. All rights reserved.
//

#import "LOTLogger.h"

@implementation LOTLogger
    
+ (instancetype)shared {
    static LOTLogger *logger = nil;
    if (logger == nil) {
        logger = [[LOTLogger alloc] init];
    }
    return logger;
}
    
- (void)log:(NSString *)message {
    NSLog(@"%@", message);
    if (_intercept != nil) {
        _intercept(message);
    }
}

@end
