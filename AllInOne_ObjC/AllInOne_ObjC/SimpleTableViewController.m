//
//  SimpleTableViewController.m
//  AllInOne_ObjC
//
//  Created by Suraj Pawar on 25/04/17.
//  Copyright © 2017 Suraj Pawar. All rights reserved.
//

#import "SimpleTableViewController.h"
#import "SimpleTableViewCell.h"
#import "Obj-CTableViewController.h"

@interface SimpleTableViewController ()

@end

@implementation SimpleTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    marr_TutorialsList = [[NSMutableArray alloc] initWithObjects:@"Objective-C basic",@"IMP Codes",@"UI Bars",@"UI Views",@"UI Controls",@"Extensions",@"Technologies",@"Device Sensors",@"Camera Management",@"Maps & Location Handling",@"Audio & Video",@"SQLite Database",@"Core Data",@"iAd Integration",@"WatchKit", nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return [marr_TutorialsList count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
    static NSString *identifier = @"SimpleTableViewCell";
    
    SimpleTableViewCell *cell = [_tbl_TutorialsList dequeueReusableCellWithIdentifier:identifier forIndexPath:indexPath];
    
    if (cell==nil) {
       
    }
    cell.lbl_TutorialName.text= [marr_TutorialsList objectAtIndex:indexPath.row];
    
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    if (indexPath.row==0) {
        
//        Obj_CTableViewController *objc_VC = [[self storyboard]instantiateViewControllerWithIdentifier:@"Obj_CTableViewController"];
//        [self.navigationController pushViewController:objc_VC animated:YES];
        
    
        Obj_CTableViewController *objc_VC = [[UIStoryboard storyboardWithName:@"Obj-C" bundle:nil]instantiateViewControllerWithIdentifier:@"Obj_CTableViewController"];
        [self.navigationController pushViewController:objc_VC animated:YES];
    }
    
}

@end
