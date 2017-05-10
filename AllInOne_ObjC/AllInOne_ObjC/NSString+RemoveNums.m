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

 Sometimes, you may find that you wish to extend an existing class by adding behavior that is useful only in certain situations. In order add such extension to existing classes, Objective-C provides categories and extensions.
 
 If you need to add a method to an existing class, perhaps, to add functionality to make it easier to do something in your own application, the easiest way is to use a category.
 
 The syntax to declare a category uses the @interface keyword, just like a standard Objective-C class description, but does not indicate any inheritance from a subclass. Instead, it specifies the name of the category in parentheses, like this:
 
 @interface ClassName (CategoryName)
 
 @end
 Characteristics of category
 A category can be declared for any class, even if you don't have the original implementation source code.
 
 Any methods that you declare in a category will be available to all instances of the original class, as well as any subclasses of the original class.
 
 At runtime, there's no difference between a method added by a category and one that is implemented by the original class.
 
 Now, let's look at a sample category implementation. Let's add a category to the Cocoa class NSString. This category will make it possible for us to add a new method getCopyRightString which helps us in returning the copyright string. It is shown below.
 
 Even though any methods added by a category are available to all instances of the class and its subclasses, you'll need to import the category header file in any source code file where you wish to use the additional methods, otherwise you'll run into compiler warnings and errors.
 
 In our example, since we just have a single class, we have not included any header files, in such a case we should include the header files as said above.

 
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
