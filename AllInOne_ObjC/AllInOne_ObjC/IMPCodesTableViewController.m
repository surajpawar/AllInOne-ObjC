//
//  IMPCodesTableViewController.m
//  AllInOne_ObjC
//
//  Created by Avion5 on 5/2/17.
//  Copyright © 2017 Suraj Pawar. All rights reserved.
//

#import "IMPCodesTableViewController.h"

@interface IMPCodesTableViewController ()

@end

@implementation IMPCodesTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    double screenHeight = [[UIScreen mainScreen] bounds].size.height;
    if(UI_USER_INTERFACE_IDIOM()==UIUserInterfaceIdiomPad)
    {
        NSLog(@"All iPads");
    } else if (UI_USER_INTERFACE_IDIOM()== UIUserInterfaceIdiomPhone)
    {
        if(screenHeight == 480) {
            NSLog(@"iPhone 4/4S");
            
        } else if (screenHeight == 568) {
            NSLog(@"iPhone 5/5S/SE");
            
        } else if (screenHeight == 667) {
            NSLog(@"iPhone 6/6S");
        } else if (screenHeight == 736) {
            NSLog(@"iPhone 6+, 6S+");
        } else {
            NSLog(@"Others");
        }
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 0;
}

/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/



#pragma mark - Getting Current Device

-(NSString*)getCurrentDevice{
    
    NSString *str_CurrentDevice;
    //IPad Style UI
    if ([[UIDevice currentDevice] userInterfaceIdiom]==UIUserInterfaceIdiomPad) {
        
        str_CurrentDevice = @"IPad";
    //IPhone and IPod Touch Style UI
    }else if ([[UIDevice currentDevice] userInterfaceIdiom]==UIUserInterfaceIdiomPhone){
        
        str_CurrentDevice = @"IPhone";
    //ITV Style UI
    }else if ([[UIDevice currentDevice] userInterfaceIdiom]==UIUserInterfaceIdiomTV){
        
        str_CurrentDevice = @"ITV";
    //ICarPlay Style UI
    }else if ([[UIDevice currentDevice] userInterfaceIdiom]==UIUserInterfaceIdiomCarPlay){
        
        str_CurrentDevice = @"ICarPlay";
    //Not Specified Style UI
    }else if ([[UIDevice currentDevice] userInterfaceIdiom]==UIUserInterfaceIdiomUnspecified){
        
        str_CurrentDevice = @"Unspecified";
        
    }
    
    return str_CurrentDevice;
}


#pragma mark - Getting Current Device OS Version

-(NSString*)getDeviceOSVersion
{
    NSString *str_DeviceOSVerion;

// ios 8
#ifdef __IPHONE_8_0
    
    str_DeviceOSVerion = @"iOS 8.0";
    
#endif
    
// ios 9
#ifdef __IPHONE_9_0
    
    str_DeviceOSVerion = @"iOS 9.0";

#endif
 
// ios 10
#ifdef __IPHONE_10_0

    str_DeviceOSVerion = @"iOS 10.0";
    
#endif
    
//TVOS
#ifdef __TVOS_10_0
    
    str_DeviceOSVerion = @"TVOS 10.0";
    
#endif
    
//Watch OS
#ifdef __WATCHOS_3_0
    
    str_DeviceOSVerion = @"WatchOS 3.0";
    
#endif

    
    return str_DeviceOSVerion;
}

#pragma mark - Getting Current Device Orientation

-(NSString*)getDeviceOrientation{
    
    NSString *str_DeviceOrientation;
    
    
    return str_DeviceOrientation;
}


#pragma mark - UIAlertViewController

-(void)alertViewController
{
    //Create Alert Controller and set title, message and style
    UIAlertController *obj_alertContorller = [UIAlertController alertControllerWithTitle:@"Alert!" message:@"You are using Alert!" preferredStyle:UIAlertControllerStyleAlert];
    
    //Create action buttons on alert and set button title and style
    UIAlertAction *obj_actionOK = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:
    ^(UIAlertAction *obj_Action){
        
        //After button click do the stuf here.
    }];
    
    //Add action to alert controller
    [obj_alertContorller addAction:obj_actionOK];
    
    //setting alert controller to current controller
    [self presentViewController:obj_alertContorller animated:YES completion:nil];
    
}

#define mark - UIActionSheet

-(void)actionSheet
{
    //UIActionSheet is depreciated in IOS 8.0
    //So we can use UIAlertController as action sheet as shown below
    
    UIAlertController *obj_ActionSheet = [UIAlertController alertControllerWithTitle:@"Action Sheet" message:@"Please Select" preferredStyle:UIAlertControllerStyleActionSheet];
    
    [obj_ActionSheet addAction:[UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:^(UIAlertAction *obj_Action){
        
        //No need to dismiss it will automatically get cancel
        
    }]];

    [obj_ActionSheet addAction:[UIAlertAction actionWithTitle:@"Take Photo" style:UIAlertActionStyleDefault handler:^(UIAlertAction *obj_Action){
        
        //Call take photo method here or just add logic here
        
    }]];
    
    [obj_ActionSheet addAction:[UIAlertAction actionWithTitle:@"Choose Photo" style:UIAlertActionStyleDefault handler:^(UIAlertAction *obj_Action){
    
        //Call choose photo method here or just add logic here
        
    }]];

    //assigning action sheet to current controller
    [self presentViewController:obj_ActionSheet animated:YES completion:nil];
    
}

#pragma mark - NSUserDefault

-(void)setValeueInUserDefault
{
    //Declaring user default you can declare it globally too to reuse same UserDefault always
    //We can also declare it in Appdelegate or in Singleton class
    NSUserDefaults *obj_SampleUserDefault = [NSUserDefaults standardUserDefaults];
    //Setting String Value
    [obj_SampleUserDefault setValue:@"String" forKey:@"Value_Key"];
    //Setting Object
    [obj_SampleUserDefault setObject:nil forKey:@"Object_Key"];
    //Setting Bool
    [obj_SampleUserDefault setBool:YES forKey:@"Bool_Key"];
    //Setting Interger
    [obj_SampleUserDefault setInteger:1 forKey:@"Integer_Key"];
    //Setting URL
    [obj_SampleUserDefault setURL:[NSURL URLWithString:@"http://google.com"] forKey:@"URL_Key"];
    
    //Doing manual synchronization to write all data to disk
    //synchronize method returns "Yes" if save value successfully to disk or "NO" if not
    [obj_SampleUserDefault synchronize];
    
}

-(NSString*)getValueFromUserDefault
{
    //Creating user default object
    NSUserDefaults *obj_SampleUserDefault = [NSUserDefaults standardUserDefaults];
    //Getting value from User_Default and storing to String
    NSString *str_ValueKey = [obj_SampleUserDefault objectForKey:@"Value_Key"];
    
    return str_ValueKey;
    
}



@end
