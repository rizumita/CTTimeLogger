//
//  CTTimeLogger.m
//  CTTimeLogger
//
//  Created by 和泉田 領一 on 2013/04/01.
//  Copyright (c) 2013年 CAPH. All rights reserved.
//

#import "CTTimeLogger.h"
#import <sys/time.h>

@implementation CTTimeLogger
{
    struct timeval _ts;
    struct timeval _te;
}

+ (CTTimeLogger *)instance
{
    static CTTimeLogger *_instance = nil;

    @synchronized (self) {
        if (_instance == nil) {
            _instance = [[self alloc] init];
        }
    }

    return _instance;
}

+ (void)start
{
    [[self instance] start];
}

- (void)start
{
    gettimeofday(&_ts, NULL);
}

+ (void)stop
{
    [[self instance] stop];
}

- (void)stop
{
    gettimeofday(&_te, NULL);
    double startTime = _ts.tv_sec + _ts.tv_usec * 1e-6;
    double endTime = _te.tv_sec + _te.tv_usec * 1e-6;
    NSLog(@"Finished in %f sec.", endTime - startTime);
}

@end
