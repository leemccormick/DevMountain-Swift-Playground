import UIKit

// Pair Randomizer

var peopleArray = ["one", "two", "three", "four", "five", "six", "seven", "eight","nine", "ten","eleven","twevel","Thritheen"//,"14","15"]
]

var groupArray = [["one", "two"], ["three", "four"], ["five", "six"],[ "seven", "eight"],["nine", "ten"],["eleven"]]

groupArray[0][1]

var pair : [[String]] = []

// Generate Groups
func generatePiarInEachGroup() {
    var newGroup: [String] = []
    if peopleArray.count % 2 != 0 {
        for people in peopleArray {
            print(people)
            
            if newGroup.count < 2 {
                newGroup.append(people)
            } else {
                pair.append(newGroup)
                newGroup = []
                newGroup.append(people)
            }
        }
        if let people = peopleArray.last {
            let lastPerson = [people]
            pair.append(lastPerson)
        }
    } else {
        for people in peopleArray {
            print(people)
            if newGroup.count < 2 {
                newGroup.append(people)
                
                if let people = peopleArray.last {
                    if newGroup.contains(people) {
                        pair.append(newGroup)
                    }
                }
                
            } else {
                pair.append(newGroup)
                newGroup = []
                newGroup.append(people)
            }
        }
    }
}

// ==> even 0 missing the one before the last
// ===> odd 1 working
generatePiarInEachGroup()
var leftOverFromNumberOfGroup = peopleArray.count % 2
print(pair)
print(peopleArray.last)
var newPeopleArray = peopleArray.shuffled()
print(newPeopleArray)
newPeopleArray = peopleArray.shuffled()
print(newPeopleArray)
var numberOfGroup = peopleArray.count / 2

class Group {
    var personName: [String]
    init(personName: [String]){
        self.personName = personName
    }
}

