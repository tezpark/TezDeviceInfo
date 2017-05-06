//
//  TezDeviceInfoCenter.m
//  Tez
//
//  Created by TezPark on 2017. 5. 6..
//  Copyright (c) 2017년 TezLab. All rights reserved.
//

#import "TezDeviceInfoCenter.h"

@implementation TezDeviceInfoCenter

#pragma mark -  const

static NSString * const kKeyUUID = @"UUID";
static NSString * const kKeyPushToken = @"pushToken";

#pragma mark - UUID
+ (NSString *)UUID {
    NSString *sUUID = [[NSUserDefaults standardUserDefaults] stringForKey:kKeyUUID];
    if(sUUID == nil) {
        CFUUIDRef uuid = CFUUIDCreate(kCFAllocatorDefault);
        sUUID = ((NSString *)CFBridgingRelease(CFUUIDCreateString(kCFAllocatorDefault, uuid)));
        CFRelease(uuid);
        [[NSUserDefaults standardUserDefaults] setObject:sUUID forKey:kKeyUUID];
    }
    
    return sUUID;
}

+ (void)removeUUID {
    [[NSUserDefaults standardUserDefaults] removeObjectForKey:kKeyUUID];
}

#pragma mark - PushToken
+ (void)setPushToken:(NSString *)pushToken {
    if(pushToken == nil)
        [[NSUserDefaults standardUserDefaults] removeObjectForKey:kKeyPushToken];
    else
        [[NSUserDefaults standardUserDefaults] setObject:pushToken forKey:kKeyPushToken];
}

+ (NSString *)pushToken {
    return [[NSUserDefaults standardUserDefaults] stringForKey:kKeyPushToken];
}

@end
