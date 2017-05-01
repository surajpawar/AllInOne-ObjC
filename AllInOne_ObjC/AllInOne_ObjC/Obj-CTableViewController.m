//
//  Obj-CTableViewController.m
//  AllInOne_ObjC
//
//  Created by Suraj Pawar on 28/04/17.
//  Copyright © 2017 Suraj Pawar. All rights reserved.
//

#import "Obj-CTableViewController.h"
#import "Obj-CTableViewCell.h"

@interface Obj_CTableViewController ()

@end

@implementation Obj_CTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    marr_ObjC_TutorialsList = [[NSMutableArray alloc] initWithObjects:@"Intro",@"Basics",@"Functions",@"Blocks",@"Numbers, Strings and more",@"All Storage Types",@"Pointers",@"Structures",@"Preprocessors",@"Typedef",@"Type Casting",@"Log Handling",@"Error Handling",@"MultiThreading",@"Classes & Objects",@"Inheritance",@"Polymorphism",@"Data Encapsulation",@"Categories",@"Posing",@"Extensions",@"Protocols",@"Dynamic Binding",@"Composite Objects",@"Foundation Framework",@"Fast Enumeration",@"Memory Management", nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return [marr_ObjC_TutorialsList count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *identifier = @"Obj_CTableViewCell";
    
    Obj_CTableViewCell *objc_Cell = [_tbl_ObjCTutorials dequeueReusableCellWithIdentifier:identifier forIndexPath:indexPath];
    
    if (objc_Cell==nil) {
        
    }
    
    objc_Cell.lbl_Obj_CTutorials.text = [marr_ObjC_TutorialsList objectAtIndex:indexPath.row];
    
    return objc_Cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
}

@end
