import UIKit

// Week 5 Friday Review by Aron : Memory Management

// Longterm memory ==> Save in Core Data
// Shortterm memory ==> Ram ==> NSObjectContext

let name = "Lee" // Run this taking memory in my mac

// Being Good System in the device
// Memery leak ==> Clear the string

class Human {
    let name: String
    init(name: String){
        self.name = name
    }
//    init(hairColor: String) {
//
//    }
}

let lee = Human(name: "Lee") //When human is born, human has been initialize
let danny = Human(name: "Danny") // Now 2 hummans exist in the memeory
// Human(hairColor: "Blue")

for n in 1...100000 { // Telling computer run a thousand time ==> 100000
    Human(name: "\(n)") // ==> Running it ==> 100000
}

class House {
    let address: String
    init(address: String, wood: String, nails: [String]){
        self.address = address
    }
}

//______________________________________________________________________________________

class Student {
    var name: String
    init(name: String){
        self.name = name
        print("\(name) is being initialized. \\Student is born.")
    }
    deinit {
        print("\(name) is being DEinitialized. \\Student is dead.")
    }
}

class Teacher {
    var name: String
    init(name: String){
        self.name = name
    }
}

// Reseting the phone, ===> get rid of memory leak
var leemccormick = Student(name: "Lee McCormick")
var student: Student? = Student(name: "Lee McCormick")
student = nil // ==> Now clearing up the memory by deinit //You using reference count under the hood.

// Automatic reference counting ???
// In the past ==> Developer need to reserved the memory to use...
// Has to learn how to manage the memory

var student2 = student
print(student2?.name)
var student3 = student
print(student3?.name)
var student4 = student
print(student4?.name)

// ===> All student is the same memory because class is reference type
// References's count are 4.

//student4?.name = "Danny" // ==> Now, all student  are named "Danny"


//______________________________________________________________________________________

class Student1 {
    var name: String
    weak var favoriteInstructor: Instructor?
    init(name: String) {
        self.name = name
        print("Student1 : \(name) is being initialized. \\Student1 is born.")
    }
    deinit {
        print("Student1 : \(name) is being deinitialized. \\Student1 is dead.")
    }
}

class Instructor {
    var name: String
    init(name: String){
        self.name = name
        print("Instructor \(name) is being initialized. \\Instructor is born.")

    }
    deinit {
        print("Instructor \(name) is being deinitialized. \\Instructor is dead.")
    }

}


var student1: Student1? = Student1(name: "Lee McCormick")
var instructor: Instructor? = Instructor(name: "Cameron")
// ==> Instrutor's ref count goes up by 1.
student1?.favoriteInstructor = instructor
instructor = nil // I need the the instructor, still can not delete in the memory.
print(student1?.favoriteInstructor?.name)
print(instructor?.name)

// weak var ==> Don't care any more
// THEREFORE, [weak self] in the call back function or completion block.

/* NOTE
 
 What is ARC, retain and release?
 We need to start with the foundation to fully understand what weak self and unowned self is doing. It’s best explained by reading through the Automatic Reference Counting in Swift documentation and all comes down to memory management.

 Before ARC, we had to manually manage memory and references. This caused a lot of bugs and headaches which many developers can probably tell. The reference count goes up when a new instance retains an object, while it goes down once a reference is released. Memory is freed up as soon as there’s no reference left to an object which means that the object is no longer needed.

 In Swift, we need to use weak self and unowned self to give ARC the required information between relationships in our code. Without using weak or unowned you’re basically telling ARC that a certain “strong reference” is needed and you’re preventing the reference count from going to zero. Without correctly using these keywords we possibly retain memory which can cause memory leaks in your app. So-called Strong Reference Cycles or Retain Cycles can occur as well if weak and unowned are not used correctly.

 As quoted and later explained in this blog post, it’s good to know that:

 Reference counting applies only to instances of classes. Structures and enumerations are value types, not reference types, and are not stored and passed by reference.

 When to use weak self?
 First of all, weak references are always declared as optional variables as they can automatically be set to nil by ARC when its reference is deallocated. The following two classes are going to help explain when to use a weak reference.
 
 https://www.avanderlee.com/swift/weak-self/
 
 
 //______________________________________________________________________________________
 
 Automatic Reference Counting
 Swift uses Automatic Reference Counting (ARC) to track and manage your app’s memory usage. In most cases, this means that memory management “just works” in Swift, and you do not need to think about memory management yourself. ARC automatically frees up the memory used by class instances when those instances are no longer needed.

 However, in a few cases ARC requires more information about the relationships between parts of your code in order to manage memory for you. This chapter describes those situations and shows how you enable ARC to manage all of your app’s memory. Using ARC in Swift is very similar to the approach described in Transitioning to ARC Release Notes for using ARC with Objective-C.

 Reference counting applies only to instances of classes. Structures and enumerations are value types, not reference types, and are not stored and passed by reference.

 How ARC Works
 Every time you create a new instance of a class, ARC allocates a chunk of memory to store information about that instance. This memory holds information about the type of the instance, together with the values of any stored properties associated with that instance.

 Additionally, when an instance is no longer needed, ARC frees up the memory used by that instance so that the memory can be used for other purposes instead. This ensures that class instances do not take up space in memory when they are no longer needed.

 However, if ARC were to deallocate an instance that was still in use, it would no longer be possible to access that instance’s properties, or call that instance’s methods. Indeed, if you tried to access the instance, your app would most likely crash.

 To make sure that instances don’t disappear while they are still needed, ARC tracks how many properties, constants, and variables are currently referring to each class instance. ARC will not deallocate an instance as long as at least one active reference to that instance still exists.

 To make this possible, whenever you assign a class instance to a property, constant, or variable, that property, constant, or variable makes a strong reference to the instance. The reference is called a “strong” reference because it keeps a firm hold on that instance, and does not allow it to be deallocated for as long as that strong reference remains.
 
 https://www.avanderlee.com/swift/weak-self/
 
 */
