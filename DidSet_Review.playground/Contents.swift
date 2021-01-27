import UIKit

// MARK: - Date Get Set
extension Date {
    func stringWith(dataStyle: DateFormatter.Style, timeStyle: DateFormatter.Style) -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = dataStyle
        formatter.timeStyle = timeStyle
        return formatter.string(from: self)
    }
}

var currentTime: Date {
    get {
        return Date()
    } set {
        print("CurrentTime was set to have a value of \(newValue)")
    }
}

// Ugly Format
print(currentTime)

// Pretty Format
print(currentTime.stringWith(dataStyle: .short, timeStyle: .short))

// MARK: - DidSet, WillSet
var firstName: String = "First" {
    didSet {
        print("Old Value: \(oldValue)")
    } willSet {
        print("New Value: \(newValue)")
    }
}

firstName = "Second"

// MARK: - Get Set
var lastName: String {
    get {
        return "lastName was accessed."
    } set {
        print("lastName was a new value of \(newValue)")
    }
}

print("\(lastName)")
lastName = "McCormick"



// MARK: - https://deckofcardsapi.com/api/deck/new/draw/?count=1
struct topLevelObject: Codable {
    let cards: [Card] //We have to do array of [Card] even if it is only one dictionary in array.
    let deckID: String
    
    enum CodingKeys: String, CodingKey { //need to have a case of everthing you have in topLevelObject
        case cards
        case deckID = "deck_id"
    }
    //enum is a structure of holding data. Example of NetworkError, create an enum to create cases for an event to handle
}

struct Card: Codable {
    let image: URL
    let value: String
    let suit: String
    let images: Images
}

struct Images: Codable {
    let png: URL
}



/* NOTE
 
 // KEY ==== []  -----> ARRAY IN JSON
 
 // YOU CAN PUT struct inside struct but complicated.

 Enumerations

 An enumeration defines a common type for a group of related values and enables you to work with those values in a type-safe way within your code.

 If you are familiar with C, you will know that C enumerations assign related names to a set of integer values. Enumerations in Swift are much more flexible, and don’t have to provide a value for each case of the enumeration. If a value (known as a raw value) is provided for each enumeration case, the value can be a string, a character, or a value of any integer or floating-point type.

 Alternatively, enumeration cases can specify associated values of any type to be stored along with each different case value, much as unions or variants do in other languages. You can define a common set of related cases as part of one enumeration, each of which has a different set of values of appropriate types associated with it.

 Enumerations in Swift are first-class types in their own right. They adopt many features traditionally supported only by classes, such as computed properties to provide additional information about the enumeration’s current value, and instance methods to provide functionality related to the values the enumeration represents. Enumerations can also define initializers to provide an initial case value; can be extended to expand their functionality beyond their original implementation; and can conform to protocols to provide standard functionality.
 
 https://docs.swift.org/swift-book/LanguageGuide/Enumerations.html
 
 //______________________________________________________________________________________
 */
