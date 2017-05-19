//
//  UIControlsViewController.m
//  AllInOne_ObjC
//
//  Created by Avion5 on 5/16/17.
//  Copyright © 2017 Suraj Pawar. All rights reserved.
//

#import "UIControlsViewController.h"

@interface UIControlsViewController (){
    
    NSMutableArray *marr_UIControls;
}

@end

@implementation UIControlsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    marr_UIControls = [[NSMutableArray alloc] initWithObjects:@"Buttons",@"Edit Menus",@"Labels",@"Page Controls",@"Pickers",@"Progress Indicators",@"Refresh Content Controls",@"Segmented Controls",@"Sliders",@"Steppers",@"Switches",@"TextFields", nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
   
}



@end
