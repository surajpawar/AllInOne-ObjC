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
 
 ****** 1.category ******
 
 -> In objective c, when you want to add some more   functionality to a class without inheritance, you simply use category for it.
 
 -> it come with its own .h and .m file
 
 -> Category use to add new method not properties.
 
 -> Category is a way to add methods to a class whether or not source code is available implies you can add category to foundation classes like NSString and also to your own custom classes
 
 
 ***** 2.class extension ******
 
 -> In objective c, when you want to make behavior of some property private you use class extension.
 
 -> it comes with .m file only.
 
 -> mainly for properties.
 
 -> Extension can only be added to the classes whose source code is available because compiler compile the source code and extension at same time.
 
 -> We can add extra instance variable and property in class extension but not in Category.
 
 -> Any variable and method inside the extension is not even accessible to inherited class.
 
 -> Category and Extension both are basically made to handle large code base but category is a way to extend class API in multiple source file while extension is a way to add required methods out side the main interface file.
 
 -> Use category when you have to break your same class code into different source file according to different functionality and Extension when you just need to add some required methods to existing class outside the main interface file. also when you need to modify a publicly declared instance variable in a class. for ex: readonly to readwrite you can re declare it in extension.
 
 
 
 * note: when we add a new file and select a option of objective c category it show category and "category on" not "subclass of" so it show like
 
 @interface className (categoryName)
 @end
 -you get two file .h and . with file name as (className+categoryName.h and className+categoryName.m)
 
 and in extension case you get
 
 @interface className()
 @end
 -you get only one file with name as className_extensionName.h
 
 * In category you don't own the class but in extension you are.
 
*/

#pragma mark - Difference between Categories & SubClass
//Difference between Categories & SubClass

/*
 
 -> Categories let you expand the API of existing classes without changing their type. Subclassing also expands the API but introduces a new type. Additionally, subclassing lets you add state.
 
 -> Category : It is used if we want to add any method on a given class whose source is not known. This is basically used when we want to alter the behaviour of any Class.
 
    For example : If we want to add a method on NSString to reverse a string we can go for categories.
 
 -> Subclassing : If we want to modify state as well as behaviour of any class or override any methods to alter the behaviour of the parent class then we go for subclassing.
 
    For example : We subclass UIView to alter its state and behaviour in our iOS code.
 
 */


#pragma mark - Difference between Categories & Delegate
//Difference between Categories & Delegate

/*
 
 -> A protocol is the same thing as an interface in Java: it's essentially a contract that says, "Any class that implements this protocol will also implement these methods."
 
 -> A category, on the other hand, just binds methods to a class. For example, in Cocoa, I can create a category for NSObject that will allow me to add methods to the NSObject class (and, of course, all subclasses), even though I don't really have access to NSObject.
 
 To summarize: a protocol specifies what methods a class will implement; a category adds methods to an existing class.
 
 -> The proper use of each, then, should be clear: Use protocols to declare a set of methods that a class must implement, and use categories to add methods to an existing class.
 
 -> A protocol says, "here are some methods I'd like you to implement." A category says, "I'm extending the functionality of this class with these additional methods."
 
 */



@implementation NSString (RemoveNums)

-(NSString*)removeNumbersFromString:(NSString *)string{
    
    NSString *str_Tream = nil;
    NSCharacterSet *numberSet = [NSCharacterSet characterSetWithCharactersInString:@"0123456789"];
    str_Tream = [string stringByTrimmingCharactersInSet:numberSet];
    return str_Tream;
}

@end
