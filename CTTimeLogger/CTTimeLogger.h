//
//  CTTimeLogger.h
//  CTTimeLogger
//
//  Created by 和泉田 領一 on 2013/04/01.
//  Copyright (c) 2013年 CAPH. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CTTimeLogger : NSObject

+ (void)start;

+ (void)stop;

+ (CTTimeLogger *)instance;


@end
