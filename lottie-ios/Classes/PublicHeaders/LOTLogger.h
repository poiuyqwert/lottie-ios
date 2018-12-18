//
//  LOTLogger.h
//  Lottie_iOS
//
//  Created by Zach Zahos on 2018-12-17.
//  Copyright © 2018 Airbnb. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LOTLogger : NSObject
    
+ (instancetype)shared;
    
@property (nonatomic, strong, nullable) void (^intercept)(NSString * message);

- (void)log:(NSString *)message;

@end

NS_ASSUME_NONNULL_END
