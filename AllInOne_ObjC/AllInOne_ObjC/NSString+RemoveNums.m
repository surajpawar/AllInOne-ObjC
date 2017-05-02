//
//  NSString+RemoveNums.m
//  AllInOne_ObjC
//
//  Created by Avion5 on 5/2/17.
//  Copyright © 2017 Suraj Pawar. All rights reserved.
//

#import "NSString+RemoveNums.h"

#pragma mark - Tutorial for Categories
//Intro

/*
 
 Categories provide the ability to add functionality to an object without subclassing or changing the actual object. A handy tool, they are often used to add methods to existing classes, such as NSString or your own custom objects.
 
*/

#pragma mark - Difference between Categories & Extensions
//Difference between Categories & Extensions

/*
 
*/

#pragma mark - Difference between Categories & SubClass
//Difference between Categories & Extensions

/*
 
 */


#pragma mark - Difference between Categories & Delegate
//Difference between Categories & Extensions

/*
 
 */



@implementation NSString (RemoveNums)

-(NSString*)removeNumbersFromString:(NSString *)string{
    
    NSString *str_Tream = nil;
    NSCharacterSet *numberSet = [NSCharacterSet characterSetWithCharactersInString:@"0123456789"];
    str_Tream = [string stringByTrimmingCharactersInSet:numberSet];
    return str_Tream;
}

@end
