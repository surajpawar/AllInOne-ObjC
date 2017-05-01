//
//  SimpleTableViewController.h
//  AllInOne_ObjC
//
//  Created by Suraj Pawar on 25/04/17.
//  Copyright © 2017 Suraj Pawar. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SimpleTableViewController : UITableViewController{
    NSMutableArray *marr_TutorialsList;
}
@property (strong, nonatomic) IBOutlet UITableView *tbl_TutorialsList;

@end
