import UIKit

// 01/06/2021 >> Day 3 at DevMountian.

 // This is by MaxOff Review from yesterday
// = assignment operator >> assigns what is on the right to what is on the left
// == Comparison operator >> checks left against right / Checks right against left
// === Checks against place in memory

// || &&
if 5 > 4  && 6 > 7 {
    print("Lee")
} else {
    print("Well")
}

if 5 > 4 || 6 > 7 {
    print("Lee")
}



//_________________________________________________________________________________


//funtion by Lee
func itGonnaBeAgreatDay(name: String, day: Int, isFeelingGood: Bool) -> (String, Bool) {
    var sentence: String
    if isFeelingGood {
        sentence = "Hello \(name), today is Day \(day) at Davmountain. It gonna be great."
    } else {
        sentence = "Hello \(name), today is Day \(day) at Davmountain. It is not your day, but keep learning."
    }
    return (sentence, isFeelingGood)
}


let howIsMyDay3 = itGonnaBeAgreatDay(name: "Lee", day: 3, isFeelingGood: true)

print(howIsMyDay3.0)

print(howIsMyDay3.1)

if howIsMyDay3.1 {
    print("I can use this howIsMyDay3.1 value from itGonnaBeAgreatDay function.")
} else {
    print("I can not use this howIsMyDay3.1 value from itGonnaBeAgreatDay function..")
}


//_________________________________________________________________________________

//This is by Cameron Stuart

/*
 COVERED SO FAR
 var vs let
 Basic Data Types (String, Bool, Int, Double)
 Addtional Data Types (Date, UIImage, Range)
 Type Inference vs Type Declaration
 Print
 Assignment Operator (=)
 Mathematical Operators
 Comparison Operators
 Logical Operators (&& ||)
 Conditional Statements
 Function(naming, paramiters, optional return, call site)
 Loop
 Control Flow
 */

/*
 TODAY WE WILL COVER
 Collection Types (Arrays, Dictionarys, Sets)
 Xcode Project
 - File Structure
 - info.Plist
 - Views
 - IBOoutlet
 - LifeCycles Methods
 */

//_________________________________________________________________________________
// Array
let arrayOfInt = Array(arrayLiteral: 1,2,3,4) //This is Type Inference, we did not declear the type, but swift using the element to assign the type

let arrayOfIntDeclear : [Int] = [1,2,3,4] //This is Type Declaration. This is NOT Type Inference.

// This is easy way to creat an array
let arrayOfIntEasy = [1, 2, 3, 4, 5, 6]
var arrayOfStrings: [String]
arrayOfStrings = ["a" ,"b" ,"c" ,"d"]

//This is how to change Array //if you append array, they in order, not being sorted. It just gonna add the end
arrayOfStrings.append("j")
arrayOfStrings.append("s")

//count element of array
arrayOfStrings.count

//access to element 4 of array
arrayOfStrings[4]

//Insert to the position you need
arrayOfStrings.insert("f", at: 4 )

//Remove array
arrayOfStrings.remove(at: 0)

//using Remove last and used it. Ex. the line at DMV.
let last = arrayOfStrings.removeLast()
print(last)

arrayOfStrings.removeLast()
arrayOfStrings.removeAll()

//add the Array
arrayOfStrings += ["d", "e", "f"]
arrayOfStrings.append("f")

//using for in array
for letter in arrayOfStrings {
    let capitalLetter = letter.uppercased()
    print(capitalLetter)
}

for number in arrayOfInt {
    let newNumber = number * 10
    print(newNumber)
}
 
 
//_________________________________________________________________________________

//Dictionary
//[key: value]()
var hogwarts = [String: String]()
hogwarts  = ["Slytherin":"Slytherin values ambition, cunning, leadership, and resourcefulness. The house mascot of Slytherin is the serpent, and the house colours are green and silver.",
             "Hufflepuff":"Hufflepuff values hard work, patience, justice, and loyalty. The house mascot is the badger, and canary yellow and black",
             "Gryffindor":"Gryffindor values courage, bravery, nerve, and chivalry. Gryffindor's mascot is the lion, and its colours are scarlet red and gold (maroon and gold on the ties and scarves)",
             "Ravenclaw":"Ravenclaw values intelligence, learning, wisdom and wit. The house mascot is an eagle and the house colours are blue and bronze"]

print(hogwarts["Slytherin"]) //this is only print value of the Slytherin key Optional
print(hogwarts)

for house in hogwarts {
    print(house)
}

//The dictionary know how to find key and value
for (house,detail) in hogwarts {
    print("KEY: \(house), VALUE: \(detail)")
}

for (house,detail) in hogwarts {
    if house == "Gryffindor"{
        print(detail)
    } else {
        print("Who care!!")
    }
}

for (house, detail) in hogwarts {
    print(house)
}

//remove Dictionary
hogwarts.removeValue(forKey: "Slytherin")
hogwarts.count

let nestedDictionary = ["card" : [["Ace":[1,11]], ["King": [10]]]] //very complicated
 

 //_________________________________________________________________________________

//Set is similar Array, but it is UNORDERED AND NO DUPICATED Always need to declear with the word Set. It take less memory on your ram.

let set: Set = [1,2,3,4,5,5,5,5,5,5,]
//_________________________________________________________________________________
