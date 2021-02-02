import UIKit

// Week 5 Day 1 : Compact Map Playground

// COMPACT MAP by Cameron

// CompactMap allows us to iterate through a sequence (most commonly an array) and apply some logic to it. In the case of nums below, I am going to flip each number to a negative, by multiplying each number by -1.
let nums = [0,1,2,3,4,5,6,7,8,9]

// This is compact map in it's true form. As we go on, I will also demonstrate this in it's swift short-hand.

/// negNums - new variable/constant name
/// nums.compactMap --> takes our nums array and performs the compactMap
/// { } --> closure (our function) we would like to apply to each element in the array
/// (e) --> the representation of the element as we iterate through this array (it is common to use e here, but you can use whatever you would like...)
/// -> Int --> Our return type. This does not need to  be specified, compactMap can use type inference.
/// in --> starts our custom block of code. In this case, we will say e (representing the element in the array it is currently iterating through, multiplied by negative 1.
let negNums = nums.compactMap { (e) -> Int in
    e * -1
}
print(negNums)

// Here we apply the exact same logic as above, just demonstrating a few options:
/// 1) I am giving my element a name of number, instead of e (again, I can name it what I want).
/// 2) I am not declaring the return type, type inference will do it's thing.
/// 3) I am using the return keyword, but on single line logic, the return is implied, therefore, I did not need to use it. Multi-line logic requires it.
/// 4) I am not only turning each number into it's equivalent negative, but also turning it into a string, therefore, negNumsAsStrings will be an array of strings, not an array of ints.
let negNumsAsStrings = nums.compactMap { (number) in
    return "\(number * -1)"
}
print(negNumsAsStrings)

// Here, we can see the short-hand applied to compactMap. $0 refers to the element of the array that we are currently iterating through. This allows us to not have to name our element at all (in the past examples we gave a name of e, and number.
let negNums2 = nums.compactMap { $0 * -1 }
print(negNums2)

// NOTE: applying compactMap actually returns values, therefore, it does not manipulate the original array. If we print nums, you will notice it still the original array of positive numbers.
print(nums)


// One other important piece about compactMap is that it only returns non-nil values. See the following example.
let stringNumbers = ["1","2","three","four","5"]

let numsAsInts = stringNumbers.compactMap { (e) -> Int? in
    Int(e)
}
print(numsAsInts) // [1,2,5]

// Setting the return type as an optional Int allows us to perform logic inside the closure that could possibly result in nil. If you were to take the question mark off of the declared Int return type, the logic of our closure must always return an Int. Even though we make our return type as an optional Int, if you option-click on numsAsInts, you will notice that it is an array of Int, non-optional. If something in our closure equates to nil, compactMap will not pass it to our new array.

// Note, the short-hand form automatically allows for you to return optional values, it will not make you unwrap. But, as before, it will still not pass nil values over to our new array.
let numsAsInts2 = stringNumbers.compactMap { Int($0) }
print(numsAsInts2)

// Two final examples of compactMap. These will be a slightly larger examples.

class Student {
    let name: String
    let examScore: Int
    
    init(name: String, examScore: Int) {
        self.name = name
        self.examScore = examScore
    }
}

let harry = Student(name: "Harry Potter", examScore: 84)
let ron = Student(name: "Ron Weasley", examScore: 78)
let hermione = Student(name: "Hermione Granger", examScore: 96)

var students = [harry, ron, hermione]

// In this example, we will iterate through the students in the students array, and return a sentence on the performance if each student. Note, because my closure is using multiple lines, my return statement must be explicitly stated.
let studentReports = students.compactMap { (e) -> String in
    let passing = e.examScore > 80 ? "passing" : "failing"
    return "\(e.name) scored \(e.examScore)% on their potions exam, which is \(passing)."
}

print(studentReports)

// In this final example, we will be provided with a dictionary of student names and their equivalent scores. We will then use compactMap to iterate through the dictionary, to create a Student object from each key-value pair, and then append that to the array of students. Finally, we will use compactMap to iterate over all the students and add their score to a single string, so the professor can print it out and post it on their classroom door.

let studentDictionary: [String:Int] = [
    "Neville Longbottom": 81,
    "Luna Lovegood": 90,
    "Draco Malfoy": 72,
    "Cedric Digory": 88,
    "Seamus Finnigan": 76,
]


studentDictionary.compactMap { (e) in
    let newStudent = Student(name: e.key, examScore: e.value)
    students.append(newStudent)
}
print(studentDictionary)


 // Alternatively, I could have done this:
let newStudents2 = studentDictionary.compactMap { Student(name: $0.key, examScore: $0.value) }
students.append(contentsOf: newStudents2)


var finalGrades = ""

students.compactMap { (e) in
    finalGrades.append("\(e.name): \(e.examScore)%\n")
}

print(finalGrades)
