//
//  UIBarsViewController.m
//  AllInOne_ObjC
//
//  Created by Avion5 on 5/16/17.
//  Copyright © 2017 Suraj Pawar. All rights reserved.
//

#import "UIBarsViewController.h"

@interface UIBarsViewController (){
    
    NSMutableArray *marr_UIBars;
}

@end

@implementation UIBarsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    marr_UIBars = [[NSMutableArray alloc] initWithObjects:@"Navigation Bar",@"Search Bar",@"Status Bar",@"Tab Bar",@"Tool Bar", nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}


@end
