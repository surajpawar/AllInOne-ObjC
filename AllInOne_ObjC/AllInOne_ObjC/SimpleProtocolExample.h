//
//  SimpleProtocolExample.h
//  AllInOne_ObjC
//
//  Created by Avion5 on 5/2/17.
//  Copyright © 2017 Suraj Pawar. All rights reserved.
//

#import <Foundation/Foundation.h>

#pragma mark - Protocol/Delegate Tutorial
//

/*
 
 Objective-C allows you to define protocols, which declare the methods expected to be used for a particular situation. Protocols are implemented in the classes conforming to the protocol.
 
 A simple example would be a network URL handling class, it will have a protocol with methods like processCompleted delegate method that intimates the calling class once the network URL fetching operation is over.
 
 ******** A syntax of protocol is shown below. **************
 
 @protocol ProtocolName
 @required
 // list of required methods
 @optional
 // list of optional methods
 @end
 
 The methods under keyword @required must be implemented in the classes that conforms to the protocol and the methods under @optional keyword are optional to implement.
 
****** Here is the syntax for class conforming to protocol *********
 
 @interface MyClass : NSObject <MyProtocol>
 ...
 @end
 
 This means that any instance of MyClass will respond not only to the methods declared specifically in the interface, but that MyClass also provides implementations for the required methods in MyProtocol. There's no need to redeclare the protocol methods in the class interface - the adoption of the protocol is sufficient.
 
 If you need a class to adopt multiple protocols, you can specify them as a comma-separated list. We have a delegate object that holds the reference of the calling object that implements the protocol.
 
 In any iOS or Mac app, we will never have a program implemented without a delegate. So its important we understand the usage of delegates. Delegates objects should use unsafe_unretained property type to avoid memory leaks.

*/

#pragma mark - Difference between Protocol and delegate
//

/*
 
 
*/

#pragma mark - Difference between Protocol and interface
//

/*
 
 
*/

#pragma mark - Difference between Protocol and SubClass
//

/*
 
 
*/

#pragma mark - Difference between Protocol and delegate
//

/*
 
 
*/

#pragma mark - Difference between Protocol and Category
//

/*
 
 
 */



@protocol SimpleProtocolExample <NSObject>

@end
