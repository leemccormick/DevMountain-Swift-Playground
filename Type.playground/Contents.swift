import UIKit

// MARK: - Reference Type and Value Type

// Class is a reference type
class Wall {
    var hasGraffiti: Bool = false
}

let berlinWall = Wall()
berlinWall.hasGraffiti
print(berlinWall.hasGraffiti)

let greatWallOfChina = berlinWall

print(greatWallOfChina.hasGraffiti)

func thisISAnAsynCall(completion: @escaping () -> Void) {
    
}

/*
 
 thisISAnAsynCall { [weak self].... } // We just need weak self to save the memory leak ???
 // Use weak before assign the delegate.
 
 */

// Example of Value type
var greeting = "Hello"
var fairwell = greeting

fairwell = "Goodbye"
print(greeting)


/* NOTE
 
 Instantiation as “ready to use”
 
 Memory Leak >> When you have 2 reference type and can not delicate?
 Memory Management ???
 
 // There are only 3 Reference Type in Swift
 1) Class
 2) Fucntions
 3) Closures
 - We init a ref type in memory - Ref count increases to 1
 - We point to with a ref type - bumps ref count to 2
 - If we weakly point to if-ref count withh stay at 1
 - Ref - you interact with the same istance in men
 - Phone == Shared Contacts on the the phone
 - Git hub
 - Ref is Only 1 placese in the memory
 
 // - NEED TO PUT weak in front of these either 3 ways...
 - Strong  += Ref count >> The default is strong
 - Weak += Ref count HAS TO BE OPTIONAL
 - Unowned - the same as weak, but not optional
 
 // There are Value Type. >> Enum, Struct, Protocol
 // Value have been in different places in memory.
 String is a Struct
 Bool is a Enum ???
 - Val - you interact with a single instance in memory
 - Phone == The messages that we passes are value type.
 - Copy and give you the new instance in memory
 - Playing a game on the telephone, pass message and keep changing, retain the value of the message.
 
 
 //______________________________________________________________________________________
 
 STRONG
 Let's start off with what a strong reference is. It's essentially a normal reference (pointer and all), but it's special in it's own right in that it protects the referred object from getting deallocated by ARC by increasing it's retain count by 1. In essence, as long as anything has a strong reference to an object, it will not be deallocated. This is important to remember for later when I explain retain cycles and stuff.
 
 Strong references are used almost everywhere in Swift. In fact, the declaration of a property is strong by default! Generally, we are safe to use strong references when the hierarchy relationships of objects are linear. When a hierarchy of strong references flow from parent to child, then it's always ok to use strong references.
 
 WEAK AND UNOWNED REFERENCES
 
 WEAK
 A weak reference is just a pointer to an object that doesn't protect the object from being deallocated by ARC. While strong references increase the retain count of an object by 1, weak references do not. In addition, weak references zero out the pointer to your object when it successfully deallocates. This ensures that when you access a weak reference, it will either be a valid object, or nil.
 
 UNOWNED
 Weak and unowned references behave similarly but are NOT the same. Unowned references, like weak references, do not increase the retain count of the object being referred. However, in Swift, an unowned reference has the added benefit of not being an Optional.  This makes them easier to manage rather than resorting to using optional binding. This is not unlike Implicitly Unwrapped Optionals . In addition, unowned references are non-zeroing. This means that when the object is deallocated, it does not zero out the pointer. This means that use of unowned references can, in some cases, lead to dangling pointers. For you nerds out there that remember the Objective-C days like I do, unowned references map to unsafe_unretained references.
 
 https://krakendev.io/blog/weak-and-unowned-references-in-swift
 
 //______________________________________________________________________________________
 
 Difference Between Value Type and Reference Type in Swift
 
 Type: Type is a classification of data that tell compiler or interpreter how to use Data.
 
 Definition:
 Value Type: Value type is that type which created directly on memory.Every Instance keep unique copy of data .When assign or copy it created a complete new data .
 Reference Type : A Type That share a single Data. When initialised once and assign to a variable or contact or a function its return a reference .
 
 https://medium.com/good-morning-swift/difference-between-value-type-and-reference-type-in-swift-1f2bd9dd32a7
 
 */

// MARK: - URL ANATOMY

/* NOTE
 https://github.com/Tittaporn/VirtualTourist/tree/main/VirtualTourist/Models/FlickrAPI?key=value
 0) Bearer = UUID >> We are not learning this one yet.
 1) Scheme = https://
 2) Domain = www.github.com
 3) Path >> The orders of Path is matter. >> Called "pathNameEndPoint"
 3.1) Path1 = Tittaporn
 3.2) Path2 = VirtualTourist
 3.3) Path3 = tree
 3.4) Path4 = main
 3.5) Path5 = .....
 
 `AppendingPathComponent("Tittaporn")`
 
 4) Query Item >> After the path, following a "?", key/value pairs //The orders of Queries are not matter when you use URLComponent is a computed property.
 
 //______________________________________________________________________________________
 */


