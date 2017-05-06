//
//  TezDeviceInfoCenter.h
//  Tez
//
//  Created by TezPark on 2017. 5. 6..
//  Copyright (c) 2017년 TezLab. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TezDeviceInfoCenter : NSObject

#pragma mark - UUID
/**
 앱에 대한 고유한 UUID를 리턴한다.
 UUID가 없는 경우 생성하고 userDefaults에 저장하고 리턴해준다.
 
 @return UUID;
 */
+ (NSString *)UUID;

/**
 *
 */
+ (void)removeUUID;

#pragma mark - PushToken
/**
 푸시 토큰을 저장. nil이면 remove한다.
 */
+ (void)setPushToken:(NSData *)deviceToken;

/**
 푸시 토큰을 가져온다.
 
 @return push token string
 */
+ (NSString *)pushToken;


@end
