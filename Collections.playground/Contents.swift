import UIKit

// Week 4 Day 4 : Collection by MaxPoff
//MARK: - Arrays
/*
 Arrays:
    - Multiple values stored as a single value
    - Wrapped in brackets, each item separated by a comma
    - Can be indexed using subscript
    - Ordered
    - Duplicates allowed
    - Once given a type, an array can only ever take that type
 */

var blue = "Leonardo"
var red = "Raphael"
var purple = "Donatello"
var orange = "whoCares"

var exampleArray1: [String] = []

exampleArray1.append(contentsOf: [blue, red, purple, orange, blue, red, purple, orange])

var exampleArray2: [String] = ["Leonardo", "Raphael", "Donatello", "whoCares"]

//Line 25 will cause an error because `exampleArray1` has been assigned String, and therefore cannot change.
//exampleArray1.append(10)

print("Array1: \(exampleArray1)") ; print("Array2: \(exampleArray2)")

//MARK: - Sets
/*
 Sets:
    - Unordered
    - Does not allow duplicates
 */

var turtles = Set<String>()

turtles.insert(blue) ; turtles.insert(blue)
turtles.insert(red) ; turtles.insert(red)
turtles.insert(purple) ; turtles.insert(purple)
turtles.insert(orange) ; turtles.insert(orange)

//Note that this print will only return four names in the set, even though I assigned each name twice. This is because a set does not accept duplicates.
//Note also that this print will return the items in a different order each time you print. This is not necessarily a random order, rather it is unordered.
print("Set: \(turtles)")

//MARK: - Tuples
/*
 Tuples:
    - You can't add or remove items from a tuple once it is created
    - Cannot change type, but can change value
    - Can be accessed by position or name
 */

var loserTurtles = (blue: "Leonardo", red: "Raphael", purple: "Donatello", orange: "whoCares")

print(loserTurtles.blue)
print(loserTurtles.0)

loserTurtles.orange = "biggestLoser"
print(loserTurtles.3)

//MARK: - Dictionaries
/*
 Dictionaries:
    - Key : Value pairs
    - Duplicates allowed
 */

//Creating a String : Any array will allow you to assign any data type as the value, but once you have set that value data type, it cannot be changed.
let exampleDict = [String : Any]()

let ages: [String : Int] = [
    "Leonardo" : 22,
    "Raphael" : 21,
    "Donatello" : 20,
    "whoCares" : 3
]

//Note that without providing a default value, the accessed value is optional. By providing a default, we can silence that yellow warning and create a little safer code.
//Note also that a typo of your key will result in a nil value
print(ages["Leonardo"])
print(ages["Leanerdo"])
print(ages["Leonardo", default: 100])

//MARK: - Enums
/*
 Enums:
    - Grouping related values for ease of use, and also for consistency and safety 
    - cases
 */

//You can assign an associated value to an enum in order to improve clarity
enum Smarts {
    case IQ(number: Int)
}

let Leonardo = Smarts.IQ(number: 100)
let Raphael = Smarts.IQ(number: 90)
let Donatello = Smarts.IQ(number: 80)
let whoCares = Smarts.IQ(number: 1)
print(Leonardo) ; print(Raphael) ; print(Donatello) ; print(whoCares)

enum Names {
    case Leonardo
    case Raphael
    case Donatello
    case whoCares
}

let Blue = Names.Leonardo
print(Blue)
