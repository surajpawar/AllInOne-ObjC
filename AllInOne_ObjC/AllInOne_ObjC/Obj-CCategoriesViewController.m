//
//  Obj-CCategoriesViewController.m
//  AllInOne_ObjC
//
//  Created by Avion5 on 5/2/17.
//  Copyright © 2017 Suraj Pawar. All rights reserved.
//

#import "Obj-CCategoriesViewController.h"
#import "NSString+RemoveNums.h"

@interface Obj_CCategoriesViewController ()

@end

@implementation Obj_CCategoriesViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *str_Example = @"ABC123";
    NSLog(@"Orignal String -->%@",str_Example);
    
    //Removing Numbers
    str_Example = [str_Example removeNumbersFromString:str_Example];
    NSLog(@"Removed number string --> %@",str_Example);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
