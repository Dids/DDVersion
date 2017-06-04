//
//  DDVersion.m
//  DDVersion
//
//  Created by Pauli Jokela on 9.10.2014.
//  Copyright (c) 2014 Didstopia. All rights reserved.
//

#import "DDVersion.h"

#import <sys/utsname.h>

@implementation DDVersion

+ (NSString*)deviceType
{
    struct utsname systemInfo;
    uname(&systemInfo);
    return [NSString stringWithCString:systemInfo.machine encoding:NSUTF8StringEncoding];
}

+ (NSString*)deviceName
{
    NSString *deviceListFilePath = [[NSBundle mainBundle] pathForResource:@"DeviceList" ofType:@"plist"];
    NSDictionary *deviceList = [NSDictionary dictionaryWithContentsOfFile:deviceListFilePath];
    
    NSString *result = [deviceList objectForKey:[DDVersion deviceType]];
    return [result length] == 0 ? @"Unknown" : result;
}

@end
