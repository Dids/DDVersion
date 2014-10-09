DDVersion
=============

DDVersion is a simple, univeral Objective-C library for quickly getting an iOS device type or name.

While DDVersion was inspired by [sebyddd](https://github.com/sebyddd)'s [SDiPhoneVersion](https://github.com/sebyddd/SDiPhoneVersion), it doesn't include support for device size or device enumeration. Not yet at least.

Currently this library supports all iOS devices, both new and old.

## Usage
```objective-c
	// Get the device type as a string (eg. "iPhone6,1" or "i386")
    [DDVersion deviceType];

    // Get the device name as a string (eg. "iPhone 5S (GSM)" or "Simulator")	
    [DDVersion deviceName];
```

## Demo

To run the example project, simply open up `DDVersionDemo.xcodeproj` and hit Build & Run.

## Requirements

## Installation using CocoaPods (RECOMMENDED)

DDVersion is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
    pod "DDVersion"
```

## Manual Installation

Simply copy DDVersion.h and DDVersion.m to your project and import DDversion.h like so:
```objective-c
	#import "DDVersion.h"
```

Using the CocoaPod installation method is recommended over the manual installation, as this way your copy of DDVersion is always up to date.

## Author

Pauli 'Dids' Jokela, pauli.jokela@didstopia.com and Didstopia, http://didstopia.com

Some of the original code (and major inspiration!) comes from [sebyddd](https://github.com/sebyddd)'s [SDiPhoneVersion](https://github.com/sebyddd/SDiPhoneVersion)

## License

DDVersion is available under the MIT license. See the LICENSE file for more info.
