import UIKit

// Lecture Review on Day3 Week3 1/20/2021

class Task {
    let name: String
    var isComplete: Bool
    
    init(name: String, isComplete: Bool = false) {
        self.name = name
        self.isComplete = isComplete
    }
}

let takeOutGarbage = Task(name: "Take out garbage", isComplete: false)
var walkDog = Task(name: "Walk the dog", isComplete: true)
let doDishes = Task(name: "Do Dishes")
print(doDishes.isComplete)
//________________________________________________________________________________

walkDog = doDishes
// takeOutGarbage = doDishes // >> CAN NOT ASSIGN because let

//________________________________________________________________________________

class TaskController {
    static func toggleTaskCompletion(task: Task) {
        print("Task name : \(task.name)")
        print("Task Completion Status before toggle : \(task.isComplete)")
        task.isComplete.toggle()
        print("Task Completion Status after toggle : \(task.isComplete) \n")
    }
}

TaskController.toggleTaskCompletion(task: walkDog)
TaskController.toggleTaskCompletion(task: takeOutGarbage)

//________________________________________________________________________________


func add(startingValue: Int) {
    // add 5 to the total
    let updateTotal = startingValue + 5
    print(updateTotal)
    multiply(startingValue: updateTotal)
}

func multiply(startingValue: Int) {
    // multiply by 10
    let updateTotal = startingValue * 10
    print(updateTotal)
    divide(startingValue: updateTotal)
}

func divide(startingValue: Int)  {
    // divide by 2
    let updateTotal = startingValue / 2
    print(updateTotal)
    subtract(startingValue: updateTotal)
}

func subtract(startingValue: Int)  {
    // subtract 15
    let updateTotal = startingValue - 15
    print(updateTotal)
}

var total = 0
print(total)

add(startingValue: total)

//________________________________________________________________________________


func calculateAll(startingValue: Int) {
    var updateValue = addOnly(startingValue: startingValue)
    updateValue = multiplyOnly(startingValue: updateValue)
    updateValue = divideOnly(startingValue: updateValue)
    updateValue = subtractOnly(startingValue: updateValue)
    print("Total in calculateAll : \(updateValue)")
}

func addOnly(startingValue: Int) -> Int {
    // add 5 to the total
    let updateTotal = startingValue + 5
    print(updateTotal)
    return updateTotal
}

func multiplyOnly(startingValue: Int) -> Int {
    // multiply by 10
    let updateTotal = startingValue * 10
    print(updateTotal)
    return updateTotal
}

func divideOnly(startingValue: Int) -> Int {
    // divide by 2
    let updateTotal = startingValue / 2
    print(updateTotal)
    return updateTotal
}

func subtractOnly(startingValue: Int) -> Int  {
    // subtract 15
    let updateTotal = startingValue - 15
    print(updateTotal)
    return updateTotal
}

var totalOnly = 0
print("\ntotalOnly before calculateAll : \(totalOnly)")
calculateAll(startingValue: totalOnly)

