import UIKit

// MARK: -  JSON Example

class Movie {
    let title: String
    let year: Int
    let summary: String
    let hasWatched: Bool
    
    init(title: String, year: Int, summary: String,hasWatched: Bool) {
        self.title = title
        self.year = year
        self.summary = summary
        self.hasWatched = hasWatched
    }
}

let hungerGames = Movie(title: "Hunger Games", year: 2013, summary: "Katniss kills everyone.", hasWatched: true)

/*
 swift don't know inference type so we use JSON to turn data to key, value in JSON
 
 Javascript Object Notation
 
 We gonna use Cadable to load data from online in JSON form to our app. But we don't need any data from online.
 
 {
 "title" : "Hunger Games",
 "year" : 2013,
 "summary" : "Katniss kills everyone.",
 "hasWatched" : true
 "poster_path" : "https://sdjaflkjasdl;fj.com"
 "year" : "2013"
 "title" : "Hunger Games",
 "year" : 2013,
 "summary" : "Katniss kills everyone.",
 "hasWatched" : true
 "poster_path" : "https://sdjaflkjasdl;fj.com"
 "year" : "2013"
 "title" : "Hunger Games",
 "year" : 2013,
 "summary" : "Katniss kills everyone.",
 "hasWatched" : true
 "poster_path" : "https://sdjaflkjasdl;fj.com"
 "year" : "2013"
 
 }
 */

// MARK: - Protocol Delegate

protocol GetCoffeeDelegate: AnyObject {
    func bringMeCoffee()
}

class Boss {
    weak var employee: GetCoffeeDelegate?
    func tellEmployeeToGetCoffee() {
        //Employee?.bringMeCoffee()
        employee?.bringMeCoffee()
    }
}


class Employee: GetCoffeeDelegate {
    func bringMeCoffee() {
        print("Taking coffee.")
    }
    
    func tellBossIAmDelegate() {
        let boss = Boss()
        boss.employee = self
    }
}

/* Example of using protocol and delegate
 
 let boss = Boss()
 let employee = Employee()
 employee.tellBossIAmDelegate()
 print(boss.employee)
 */

//_____________________________________________________________________


func printName(first: String, last: String) {
    print(first + " " + last)
}

//printName(first: "Lee", last: "Sealee", Middle: "McC") >> No not call function with more arguments than your parameter, you put in.


//_____________________________________________________________________

// MARK: - MVC Modle View Controller

/* MVC review ~ Notes from Camerons lecture by Chirs Withers
 
 Only Model Controllers should directly manipulate a model.
 Only view controllers and other model controllers should call a model controllers functions.
 A view, which a cell is, should only be communicating to view controllers.
 */

