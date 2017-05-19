//
//  NSString_ExtensionExample.h
//  AllInOne_ObjC
//
//  Created by Avion5 on 5/2/17.
//  Copyright © 2017 Suraj Pawar. All rights reserved.
//

#import <Foundation/Foundation.h>

#pragma mark - Extension Tutorial
//

/*
 A class extension bears some similarity to a category, but it can only be added to a class for which you have the source code at compile time (the class is compiled at the same time as the class extension).
 
 The methods declared by a class extension are implemented in the implementation block for the original class, so you can't, for example, declare a class extension on a framework class, such as a Cocoa or Cocoa Touch class like NSString..
 
 Extensions are actually categories without the category name. It's often referred as anonymous categories.
 
 The syntax to declare a extension uses the @interface keyword, just like a standard Objective-C class description, but does not indicate any inheritance from a subclass. Instead, it just adds parentheses, as shown below
 
********* Syntax ****** 
 
 @interface ClassName ()
 
 @end
 
********* Characteristics of extensions ************
 
 An extension cannot be declared for any class, only for the classes that we have original implementation of source code.
 
 An extension is adding private methods and private variables that are only specific to the class.
 
 Any method or variable declared inside the extensions is not accessible even to the inherited classes.
 
********* Extensions Example ***************
 
 Let's create a class SampleClass that has an extension. In the extension, let's have a private variable internalID.
 
 Then, let's have a method getExternalID that returns the externalID after processing the internalID.
 
 In the above example, we can see that the internalID is not returned directly. We here remove the UNIQUEINTERNALKEY and only make the remaining value available to the method getExternalID.
 
 The above example just uses a string operation, but it can have many features like encryption/decryption and so on.
 

 
*/

#pragma mark - Difference between Extension and Category
//

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



@interface NSString ()

@end
