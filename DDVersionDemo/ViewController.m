//
//  ViewController.m
//  DDVersion
//
//  Created by Pauli Jokela on 9.10.2014.
//  Copyright (c) 2014 Didstopia. All rights reserved.
//

#import "ViewController.h"

#import "DDVersion.h"

@interface ViewController ()

@property (nonatomic, assign) IBOutlet UILabel *deviceTypeLabel;
@property (nonatomic, assign) IBOutlet UILabel *deviceNameLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self.deviceTypeLabel setText:[DDVersion deviceType]];
    [self.deviceNameLabel setText:[DDVersion deviceName]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
