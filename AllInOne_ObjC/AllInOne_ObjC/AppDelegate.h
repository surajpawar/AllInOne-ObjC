//
//  AppDelegate.h
//  AllInOne_ObjC
//
//  Created by Suraj Pawar on 24/04/17.
//  Copyright © 2017 Suraj Pawar. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

