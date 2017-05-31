//
//  OpeningDeviceAppsViewController.m
//  AllInOne_ObjC
//
//  Created by Avion5 on 5/2/17.
//  Copyright © 2017 Suraj Pawar. All rights reserved.
//

#import "OpeningDeviceAppsViewController.h"

@interface OpeningDeviceAppsViewController ()

@end

//Note: Below codes are apples own apis and the dont allow to use in other apps
// if we use below codes in app then apple rejects the application

@implementation OpeningDeviceAppsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    NSURL *bluetoothURLOS8 = [NSURL URLWithString:@"prefs:root=General&path=Bluetooth"];
//    NSURL *bluetoothURLOS9 = [NSURL URLWithString:@"prefs:root=Bluetooth"];
//    NSURL *bluetoothURLOS10 = [NSURL URLWithString:@"Prefs:root=Bluetooth"];
//    
//    if ([[[UIDevice currentDevice] systemVersion] intValue] >= 10) {
//       
//        Class<NSObject> workSpaceClass = NSClassFromString(@"LSApplicationWorkspace");
//        
//        if (workSpaceClass) {
//            
//            #pragma clang diagnostic push
//            
//            #pragma clang diagnostic ignored "-Warc-performSelector-leaks"
//            
//    id workSpaceInstance = [workSpaceClass performSelector:NSSelectorFromString(@"defaultWorkspace")];
//            
//            SEL selector = NSSelectorFromString(@"openSensitiveURL:withOptions:");
//            
//            if ([workSpaceInstance respondsToSelector:selector]) {
//                
//            [workSpaceInstance performSelector:selector withObject:bluetoothURLOS10 withObject:nil];
//            
//            }
//            
//            #pragma clang diagnostic pop
//            
//        }
//    }
//    else if ([[[UIDevice currentDevice] systemVersion] intValue] >= 9) {
//       
//        [[UIApplication sharedApplication] openURL:bluetoothURLOS9];
//    
//    }
//    else {
//        
//        [[UIApplication sharedApplication] openURL:bluetoothURLOS8];
//    
//    }

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}



@end
