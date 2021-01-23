import UIKit

//Day 4 : Thur 01/07/2021

let Day4 = Date()
print(Day4)

/*
//Struct >> value type >> JSON Doing something with data >> has built it with initializer. Networking
//Class >> are reference type>> Beginner always using class

 Classes Are Reference Types
 Unlike value types, reference types are not copied when they are assigned to a variable or constant, or when they are passed to a function. Rather than a copy, a reference to the same existing instance is used.

 Structures and Enumerations Are Value Types
 A value type is a type whose value is copied when it’s assigned to a variable or constant, or when it’s passed to a function.

 You’ve actually been using value types extensively throughout the previous chapters. In fact, all of the basic types in Swift—integers, floating-point numbers, Booleans, strings, arrays and dictionaries—are value types, and are implemented as structures behind the scenes.

 All structures and enumerations are value types in Swift. This means that any structure and enumeration instances you create—and any value types they have as properties—are always copied when they are passed around in your code.

 https://docs.swift.org/swift-book/LanguageGuide/ClassesAndStructures.html

 What is swift initializer?
 Swift provides a default initializer for any structure or class that provides default values for all of its properties and does not provide at least one initializer itself. The default initializer simply creates a new instance with all of its properties set to their default values.
 
 Classes, structures and enumerations once declared in Swift 4 are initialized for preparing instance of a class. Initial value is initialized for stored property and also for new instances too the values are initialized to proceed further. The keyword to create initialization function is carried out by 'init ()' method.
 
//______________________________________________________________________________


class Student {
    //Properties of a Student
    var address: String // = "" // this "fix" provide a default value, "initaializing with a default value"
    let firstName: String
    let lastName: String
    
    //Initializer
    init(address: String, firstName: String, lastName: String){
        //address property on the class Student is assigned the address that is passed in from the inializer
        self.address = address
        self.firstName = firstName
        self.lastName = lastName
    } //>> the initializer is like the bridge into your class.
}

Student(address: "1720 W North Shore Ave. 2G Chicago IL.", firstName: "Lee", lastName: "McCormick")



 //______________________________________________________________________________
  */

//Creat a model for our day

class Day {
    let name: String //= "Monday" >> NOT init needed
    let origin: String //= "Monday"
    
/*
     WE DO NOT NEED init
     1) if we gave the value for the Properties
     2) if we do an optional ? for Properties
 */
    
    init(name: String, origin: String) { //It is a init function, need to do something to get the values for the class. Crate a way for the parameter to get in
        self.name = name
        self.origin = origin
    }
    
    func printDayAndOrigin(){
        
    }
    
}

// crate the array of type decoration
var allDay: [Day] = []

let today = Day(name: "Monday", origin: "description") //This is the init function from the class.
let tomorrow = Day(name: "Friday", origin: "Assessment day")
print(today.name)
print(tomorrow.origin)

var anotherAllDay = [today, tomorrow] //This is array Type Inference
allDay.append(today)

//The point of the class is to create a model for pass more value, refference data


