import UIKit

//NOTE: Don't mind this too much. This is just to make the date more readable when printing.
extension Date {
    func stringWith(dateStyle: DateFormatter.Style, timeStyle: DateFormatter.Style) -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = dateStyle
        formatter.timeStyle = timeStyle
        return formatter.string(from: self)
    }
}

var firstName: String = "First" {
    //didSet runs when the property WAS set (was assigned a new value)
    didSet {
        print("Old Value: \(oldValue).")
    //willSet runs BEFORE the property is set (is assigned a new value)
    } willSet {
        print("New Value: \(newValue).")
    }
}

//Assigning new value to firstName. I expect to see a print of the oldValue and the newValue
firstName = "Second"


var lastName: String {
    //get runs when the property is accessed (when the property is called)
    get {
        //the return in the get assigns a value to the property. lastName's value is now this string, just as if I wrote `lastName: String = "lastName was accessed"`
        return "lastName was accessed."
    //set runs when the property is assigned a value
    } set {
        //newValue is given to us because we are in a set, and represents whatever value was just set (assigned) to this property
        print("lastName has a newValue of \(newValue)")
    }
}

//Accessing lastName (getting lastName), I expect to see lastName have the value of the return that I placed in the get.
print("\(lastName)")
//Assigning new value to lastName. I expect to see the print that I placed in the set, because I just SET a value to this property.
lastName = "Poffenbarger"



//This is the same concept, but may make a little more sense to you because I have not chosen the value of the get. Instead, I just told xcode to take the current date and assign that value to the property `currentTime`. So, every time I access `currentTime`, the get portion of my code will run, and it will assign the current time and date as the value of this property.
var currentTime: Date {
    get {
        return Date()
    } set {
        print("currentTime was set to have a value of \(newValue)")
    }
}

//Ugly Format
print(currentTime)
//Pretty format
print(currentTime.stringWith(dateStyle: .short, timeStyle: .medium))



//MARK: - CodingKeys Example //https://deckofcardsapi.com/api/deck/new/draw/?count=1
struct topLevelObject: Codable {
    
    let deckID: String
    let cards: [Card]
    
    enum CodingKeys: String, CodingKey {
        case cards
        case deckID = "deck_id"
    }
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
