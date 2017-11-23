//
//  Obj-InheritanceViewController.m
//  AllInOne_ObjC
//
//  Created by Suraj Pawar on 07/05/17.
//  Copyright © 2017 Suraj Pawar. All rights reserved.
//

#import "Obj-InheritanceViewController.h"

#pragma mark - Tutorials for Inheritance
//

/*
 One of the most important concepts in object-oriented programming is that of inheritance. Inheritance allows us to define a class in terms of another class which makes it easier to create and maintain an application. This also provides an opportunity to reuse the code functionality and fast implementation time.
 
 When creating a class, instead of writing completely new data members and member functions, the programmer can designate that the new class should inherit the members of an existing class. This existing class is called the base class, and the new class is referred to as the derived class.
 
 The idea of inheritance implements the is a relationship. For example, mammal IS-A animal, dog IS-A mammal, hence dog IS-A animal as well and so on.
 
 Base & Derived Classes:
 Objective-C allows only multilevel inheritance, i.e., it can have only one base class but allows multilevel inheritance. All classes in Objective-C is derived from the superclass NSObject.
 

 *********Access Control and Inheritance:*******
 
 A derived class can access all the private members of its base class if it's defined in the interface class, but it cannot access private members that are defined in the implementation file.
 
 We can summarize the different access types according to who can access them in the following way:
 
 A derived class inherits all base class methods and variables with the following exceptions:
 
 Variables declared in implementation file with the help of extensions is not accessible.
 
 Methods declared in implementation file with the help of extensions is not accessible.
 
 In case the inherited class implements the method in base class, then the method in derived class is executed.
 

 ********* Types Of Inheritance ***************
 
 
 
 
 
 
 
*/

@interface Obj_InheritanceViewController ()

@end

@implementation Obj_InheritanceViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}



@end
