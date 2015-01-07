//
//  DDVersionDemo_Tests.m
//  DDVersionDemo Tests
//
//  Created by Pauli Jokela on 7.1.2015.
//  Copyright (c) 2015 Didstopia. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>

#import "DDVersion.h"

@interface DDVersionTests : XCTestCase

@end

@implementation DDVersionTests

- (void)testDeviceName
{
    NSString *deviceName = [DDVersion deviceName];
    XCTAssert(deviceName != nil && deviceName.length > 0, @"Device name should return a string.");
}

- (void)testDeviceType
{
    NSString *deviceType = [DDVersion deviceType];
    XCTAssert(deviceType != nil && deviceType.length > 0, @"Device type should return a string.");
}

@end
