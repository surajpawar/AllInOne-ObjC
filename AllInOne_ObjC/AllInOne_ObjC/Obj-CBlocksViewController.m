//
//  Obj-CBlocksViewController.m
//  AllInOne_ObjC
//
//  Created by Avion5 on 5/2/17.
//  Copyright © 2017 Suraj Pawar. All rights reserved.
//

#import "Obj-CBlocksViewController.h"

#pragma mark - Tutorial's for Blocks
//
/*
 
 - An Objective-C class defines an object that combines data with related behavior. Sometimes, it makes sense just to represent a single task or unit of behavior, rather than a collection of methods.
 
 - Blocks are a language-level feature added to C, Objective-C and C++ which allow you to create distinct segments of code that can be passed around to methods or functions as if they were values.
 
 - Blocks are Objective-C objects which means they can be added to collections like NSArray or NSDictionary.
 
 - They also have the ability to capture values from the enclosing scope, making them similar to closures or lambdas in other programming languages
 
 ***** Simple Block declaration syntax ******
 
 returntype (^blockName)(argumentType);
 
 ***** Simple block implementation *****
 
 returntype (^blockName)(argumentType)= ^{
 };
 
 ***** Here is a simple example *****
 
 void (^simpleBlock)(void) = ^{
 
 NSLog(@"This is a block");
 
 };
 
 ***** We can invoke the block using *****
 
 simpleBlock();
 
- Blocks Take Arguments and Return Values
 
- Blocks can also take arguments and return values just like methods and functions.
 
- Here is a simple example to implement and invoke a block with arguments and return values.
 
 double (^multiplyTwoValues)(double, double) = ^(double firstValue, double secondValue) {
 
    return firstValue * secondValue;
 
 };
 
 double result = multiplyTwoValues(2,4);
 
 NSLog(@"The result is %f", result);
 
 
*/

@interface Obj_CBlocksViewController ()

@end

@implementation Obj_CBlocksViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    simpleBlock();
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

void (^simpleBlock)(void)=^{
  
    NSLog(@"Simple block executed ");
};


@end
