//
//  Obj-CBasicViewController.m
//  AllInOne_ObjC
//
//  Created by Avion5 on 5/2/17.
//  Copyright © 2017 Suraj Pawar. All rights reserved.
//

#import "Obj-CBasicViewController.h"

#pragma mark - Tutorial Basic Syntax
//

/*
 
 You have seen a basic structure of Objective-C program, so it will be easy to understand other basic building blocks of the Objective-C programming language.
 
*********** Tokens in Objective-C **********

A Objective-C program consists of various tokens and a token is either a keyword, an identifier, a constant, a string literal, or a symbol. For example, the following Objective-C statement consists of six tokens:
 
 NSLog(@"Hello, World! \n");
 The individual tokens are:
 
 NSLog
 @
 (
 "Hello, World! \n"
 )
 ;
 Semicolons ;
 In Objective-C program, the semicolon is a statement terminator. That is, each individual statement must be ended with a semicolon. It indicates the end of one logical entity.
 
 For example, following are two different statements:
 
 NSLog(@"Hello, World! \n");
 return 0;
 Comments

You can not have comments with in comments and they do not occur within a string or character literals.

*********** Identifiers ************
 
An Objective-C identifier is a name used to identify a variable, function, or any other user-defined item. An identifier starts with a letter A to Z or a to z or an underscore _ followed by zero or more letters, underscores, and digits (0 to 9).

Objective-C does not allow punctuation characters such as @, $, and % within identifiers. Objective-C is a case-sensitive programming language. Thus, Manpower and manpower are two different identifiers in Objective-C. Here are some examples of acceptable identifiers:

mohd       zara    abc   move_name  a_123
myname50   _temp   j     a23b9      retVal

************ Keywords ***************

The following list shows few of the reserved words in Objective-C. These reserved words may not be used as constant or variable or any other identifier names.

auto	else	long	switch
break	enum	register	typedef
case	extern	return	union
char	float	short	unsigned
const	for	signed	void
continue	goto	sizeof	volatile
default	if	static	while
do	int	struct	_Packed
double	protocol	interface	implementation
NSObject	NSInteger	NSNumber	CGFloat
property	nonatomic;	retain	strong
weak	unsafe_unretained;	readwrite	readonly
 

********** Whitespace in Objective-C *********
 
A line containing only whitespace, possibly with a comment, is known as a blank line, and an Objective-C compiler totally ignores it.

Whitespace is the term used in Objective-C to describe blanks, tabs, newline characters and comments. Whitespace separates one part of a statement from another and enables the compiler to identify where one element in a statement, such as int, ends and the next element begins. Therefore, in the following statement:

int age;
There must be at least one whitespace character (usually a space) between int and age for the compiler to be able to distinguish them. On the other hand, in the following statement,

fruit = apples + oranges;   // get the total fruit
no whitespace characters are necessary between fruit and =, or between = and apples, although you are free to include some if you wish for readability purpose.
 
*/

#pragma mark - Tutorial DataTypes
//

/*
 
 1	Basic Types:
 They are arithmetic types and consist of the two types: (a) integer types and (b) floating-point types.
 
 2	Enumerated types:
 They are again arithmetic types and they are used to define variables that can only be assigned certain discrete integer values throughout the program.
 
 3	The type void:
 The type specifier void indicates that no value is available.
 
 4	Derived types:
 They include (a) Pointer types, (b) Array types, (c) Structure types, (d) Union types and (e) Function types.
 
 ********** DataTypes **********
 
 char           1 byte          -128 to 127 or 0 to 255
 unsigned char	1 byte          0 to 255
 signed char	1 byte          -128 to 127
 int            2 or 4 bytes	-32,768 to 32,767 or -2,147,483,648 to 2,147,483,647
 unsigned int	2 or 4 bytes	0 to 65,535 or 0 to 4,294,967,295
 short          2 bytes         -32,768 to 32,767
 unsigned short	2 bytes         0 to 65,535
 long           4 bytes         -2,147,483,648 to 2,147,483,647
 unsigned long	4 bytes         0 to 4,294,967,295

 ********** Flotting Point **********
 
 float	4 byte	1.2E-38 to 3.4E+38              6 decimal places
 double	8 byte	2.3E-308 to 1.7E+308            15 decimal places
 long double	10 byte	3.4E-4932 to 1.1E+4932	19 decimal places
 
 
 ********** The void Type  **********
 
 The void type specifies that no value is available. It is used in three kinds of situations:
 
 S.N.	Types and Description
 1      Function returns as void
 
 There are various functions in Objective-C which do not return value or you can say they return void. A function with no return value has the return type as void. For example, void exit (int status);
 
 2      Function arguments as void
 
 There are various functions in Objective-C which do not accept any parameter. A function with no parameter can accept as a void. For example, int rand(void);
 
 */

#pragma mark - Tutorial Variables
//

/*
 
 A variable is nothing but a name given to a storage area that our programs can manipulate. Each variable in Objective-C has a specific type, which determines the size and layout of the variable's memory; the range of values that can be stored within that memory; and the set of operations that can be applied to the variable.
 
 The name of a variable can be composed of letters, digits, and the underscore character. It must begin with either a letter or an underscore. Upper and lowercase letters are distinct because Objective-C is case-sensitive. Based on the basic types explained in previous chapter, there will be the following basic variable types:
 
 Type	Description

 char	Typically a single octet (one byte). This is an integer type.
 int	The most natural size of integer for the machine.
 float	A single-precision floating point value.
 double	A double-precision floating point value.
 void	Represents the absence of type.
 
 Objective-C programming language also allows to define various other types of variables, which we will cover in subsequent chapters like Enumeration, Pointer, Array, Structure, Union, etc. For this chapter, let us study only basic variable types.
 
********** Variable Definition in Objective-C: **********
 
 A variable definition means to tell the compiler where and how much to create the storage for the variable. A variable definition specifies a data type and contains a list of one or more variables of that type as follows:
 
 type variable_list;
 
 Here, type must be a valid Objective-C data type including char, w_char, int, float, double, bool or any user-defined object, etc., and variable_list may consist of one or more identifier names separated by commas. Some valid declarations are shown here:
 
 int    i, j, k;
 char   c, ch;
 float  f, salary;
 double d;
 
 The line int i, j, k; both declares and defines the variables i, j and k; which instructs the compiler to create variables named i, j and k of type int.
 
 Variables can be initialized (assigned an initial value) in their declaration. The initializer consists of an equal sign followed by a constant expression as follows:
 
 type variable_name = value;
 
 Some examples are:
 
 extern int d = 3, f = 5;    // declaration of d and f.
 int d = 3, f = 5;           // definition and initializing d and f.
 byte z = 22;                // definition and initializes z.
 char x = 'x';               // the variable x has the value 'x'.

 For definition without an initializer: variables with static storage duration are implicitly initialized with NULL (all bytes have the value 0); the initial value of all other variables is undefined.
 
********** Variable Declaration in Objective-C: **********
 
 A variable declaration provides assurance to the compiler that there is one variable existing with the given type and name so that compiler proceed for further compilation without needing complete detail about the variable. A variable declaration has its meaning at the time of compilation only, compiler needs actual variable declaration at the time of linking of the program.
 
 A variable declaration is useful when you are using multiple files and you define your variable in one of the files, which will be available at the time of linking of the program. You will use extern keyword to declare a variable at any place. Though you can declare a variable multiple times in your Objective-C program but it can be defined only once in a file, a function or a block of code.
 
 ********** Lvalues and Rvalues in Objective-C: **********
 
 There are two kinds of expressions in Objective-C:
 
 lvalue : Expressions that refer to a memory location is called "lvalue" expression. An lvalue may appear as either the left-hand or right-hand side of an assignment.
 
 rvalue : The term rvalue refers to a data value that is stored at some address in memory. An rvalue is an expression that cannot have a value assigned to it which means an rvalue may appear on the right- but not left-hand side of an assignment.
 
 Variables are lvalues and so may appear on the left-hand side of an assignment. Numeric literals are rvalues and so may not be assigned and can not appear on the left-hand side. Following is a valid statement:
 
 int g = 20;
 
 But following is not a valid statement and would generate compile-time error:
 
 10 = 20;
 
 */

#pragma mark - Tutorial Constants
//

/*
 
 */

#pragma mark - Tutorial Operators
//

/*
 
 */

#pragma mark - Tutorial Loops
//

/*
 
 */

#pragma mark - Tutorial Decision Making
//

/*
 
 */

@interface Obj_CBasicViewController ()

@end

@implementation Obj_CBasicViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    [self basicSyntax];
    [self dataTypes];
    [self veriables];
    [self constants];
    [self operators];
    [self loops];
    [self decisionMaking];
    
}

- (void)basicSyntax{
    
}

- (void)dataTypes{
    
}

- (void)veriables{
    
}

- (void)constants{
    
}

- (void)operators{
    
}

- (void)loops{
    
}

- (void)decisionMaking{
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
