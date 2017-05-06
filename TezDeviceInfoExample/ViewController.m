//
//  ViewController.m
//  TezDeviceInfoExample
//
//  Created by Park Taesun on 2017. 2. 26..
//  Copyright © 2017년 TezLab. All rights reserved.
//

#import "ViewController.h"
#import "TezDeviceInfoCenter.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"%@", [TezDeviceInfoCenter UUID]);
    NSLog(@"%@", [TezDeviceInfoCenter pushToken]);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
