//
//  UIViewsViewController.m
//  AllInOne_ObjC
//
//  Created by Avion5 on 5/16/17.
//  Copyright © 2017 Suraj Pawar. All rights reserved.
//

#import "UIViewsViewController.h"

@interface UIViewsViewController (){
    
    NSMutableArray *marr_UIViews;
}

@end

@implementation UIViewsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    marr_UIViews = [[NSMutableArray alloc] initWithObjects:@"Action Sheets",@"Activity View",@"Alerts",@"Collections",@"Image Views",@"Maps",@"Pages",@"Popovers",@"Scroll Views",@"Splite Views",@"Tables",@"Text Views",@"WebViews", nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

@end
