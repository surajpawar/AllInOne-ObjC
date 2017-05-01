//
//  Obj-CTableViewController.h
//  AllInOne_ObjC
//
//  Created by Suraj Pawar on 28/04/17.
//  Copyright © 2017 Suraj Pawar. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Obj_CTableViewController : UITableViewController{
    NSMutableArray *marr_ObjC_TutorialsList;
}
@property (strong, nonatomic) IBOutlet UITableView *tbl_ObjCTutorials;

@end
