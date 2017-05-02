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
    
    marr_TutorialsList = [[NSMutableArray alloc] initWithObjects:@"Objective-C basic",@"IMP Codes",@"Delegates",@"UIElements",@"Tables",@"Device Sensors",@"Camera Management",@"Maps & Location Handling",@"Audio & Video",@"SQLite Database",@"Core Data",@"Social Media",@"In-App Purchase",@"iAd Integration",@"Health-Kit", nil];
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
        
        NSURL *bluetoothURLOS8 = [NSURL URLWithString:@"prefs:root=General&path=Bluetooth"];
        NSURL *bluetoothURLOS9 = [NSURL URLWithString:@"prefs:root=Bluetooth"];
        NSURL *bluetoothURLOS10 = [NSURL URLWithString:@"Prefs:root=Bluetooth"];
        
        if ([[[UIDevice currentDevice] systemVersion] intValue] >= 10) {
            
            Class<NSObject> workSpaceClass = NSClassFromString(@"LSApplicationWorkspace");
            
            if (workSpaceClass) {
                
#pragma clang diagnostic push
                
#pragma clang diagnostic ignored "-Warc-performSelector-leaks"
                
                id workSpaceInstance = [workSpaceClass performSelector:NSSelectorFromString(@"defaultWorkspace")];
                
                SEL selector = NSSelectorFromString(@"openSensitiveURL:withOptions:");
                
                if ([workSpaceInstance respondsToSelector:selector]) {
                    
                    [workSpaceInstance performSelector:selector withObject:bluetoothURLOS10 withObject:nil];
                    
                }
                
#pragma clang diagnostic pop
                
            }
        }
        else if ([[[UIDevice currentDevice] systemVersion] intValue] >= 9) {
            
            [[UIApplication sharedApplication] openURL:bluetoothURLOS9];
            
        }
        else {
            
            [[UIApplication sharedApplication] openURL:bluetoothURLOS8];
            
        }

        
//        Obj_CTableViewController *objc_VC = [[self storyboard]instantiateViewControllerWithIdentifier:@"Obj_CTableViewController"];
//        [self.navigationController pushViewController:objc_VC animated:YES];
        
    }
}

@end
