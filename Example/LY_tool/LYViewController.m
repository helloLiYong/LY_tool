//
//  LYViewController.m
//  LY_tool
//
//  Created by LY on 08/06/2018.
//  Copyright (c) 2018 LY. All rights reserved.
//

#import "LYViewController.h"
#import "lY_DeviceTool.h"
@interface LYViewController ()

@end

@implementation LYViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    NSLog(@"%@",[lY_DeviceTool getUUID]) ;
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
