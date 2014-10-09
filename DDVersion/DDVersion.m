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
    NSString *type = [DDVersion deviceType];
    
    if ([type isEqualToString:@"iPhone1,1"]) return @"iPhone 1G";
    if ([type isEqualToString:@"iPhone1,2"]) return @"iPhone 3G";
    if ([type isEqualToString:@"iPhone2,1"]) return @"iPhone 3GS";
    if ([type isEqualToString:@"iPhone3,1"]) return @"iPhone 4";
    if ([type isEqualToString:@"iPhone3,3"]) return @"iPhone 4 (Verizon)";
    if ([type isEqualToString:@"iPhone4,1"]) return @"iPhone 4S";
    if ([type isEqualToString:@"iPhone5,1"]) return @"iPhone 5 (GSM)";
    if ([type isEqualToString:@"iPhone5,2"]) return @"iPhone 5 (GSM+CDMA)";
    if ([type isEqualToString:@"iPhone5,3"]) return @"iPhone 5C (GSM)";
    if ([type isEqualToString:@"iPhone5,4"]) return @"iPhone 5C (Global)";
    if ([type isEqualToString:@"iPhone6,1"]) return @"iPhone 5S (GSM)";
    if ([type isEqualToString:@"iPhone6,2"]) return @"iPhone 5S (Global)";
    if ([type isEqualToString:@"iPhone7,1"]) return @"iPhone 6 Plus";
    if ([type isEqualToString:@"iPhone7,2"]) return @"iPhone 6";
    
    if ([type isEqualToString:@"iPod1,1"]) return @"iPod Touch 1G";
    if ([type isEqualToString:@"iPod2,1"]) return @"iPod Touch 2G";
    if ([type isEqualToString:@"iPod3,1"]) return @"iPod Touch 3G";
    if ([type isEqualToString:@"iPod4,1"]) return @"iPod Touch 4G";
    if ([type isEqualToString:@"iPod5,1"]) return @"iPod Touch 5G";
    
    if ([type isEqualToString:@"iPad1,1"]) return @"iPad 1";
    if ([type isEqualToString:@"iPad2,1"]) return @"iPad 2 (Wifi)";
    if ([type isEqualToString:@"iPad2,2"]) return @"iPad 2 (GSM)";
    if ([type isEqualToString:@"iPad2,3"]) return @"iPad 2 (CDMA)";
    if ([type isEqualToString:@"iPad2,4"]) return @"iPad 2 (Wifi)";
    if ([type isEqualToString:@"iPad2,5"]) return @"iPad Mini (Wifi)";
    if ([type isEqualToString:@"iPad2,6"]) return @"iPad Mini (GSM)";
    if ([type isEqualToString:@"iPad2,7"]) return @"iPad Mini (GSM+CDMA)";
    if ([type isEqualToString:@"iPad3,1"]) return @"iPad 3 (Wifi)";
    if ([type isEqualToString:@"iPad3,2"]) return @"iPad 3 (GSM+CDMA)";
    if ([type isEqualToString:@"iPad3,3"]) return @"iPad 3 (GSM)";
    if ([type isEqualToString:@"iPad3,4"]) return @"iPad 4 (Wifi)";
    if ([type isEqualToString:@"iPad3,5"]) return @"iPad 4 (GSM)";
    if ([type isEqualToString:@"iPad3,6"]) return @"iPad 4 (GSM+CDMA)";
    if ([type isEqualToString:@"iPad4,1"]) return @"iPad Air (Wifi)";
    if ([type isEqualToString:@"iPad4,2"]) return @"iPad Air (GSM+CDMA)";
    if ([type isEqualToString:@"iPad4,4"]) return @"iPad Mini Retina (Wifi)";
    if ([type isEqualToString:@"iPad4,5"]) return @"iPad Mini Retina (GSM+CDMA)";
    
    if ([type isEqualToString:@"i386"]) return @"Simulator";
    if ([type isEqualToString:@"x86_64"]) return @"Simulator";
    
    return type;
}

@end
