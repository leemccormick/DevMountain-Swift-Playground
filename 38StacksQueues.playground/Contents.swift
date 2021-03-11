import UIKit

// Stacks & Queues

// people waiting in line to buy a pS5
// queue in discord
// airplane runway

// First-in First-out (FIFO)


// Spirit -> Delta -> AA _______________✈️___

public struct Queue<T> {
    
    private var storage: [T] = []
    
    // count
    var count: Int {
        return storage.count
    }
    
    // isEmpty
    var isEmpty: Bool {
        return storage.isEmpty
    }
    
    var description: String {
        let queue = storage.map {"\($0)"}.reversed().joined(separator: " -> ")
        return "\(queue) -> ____________________________ ✈️___\n\n"
    }
    
    // enqueue
    mutating func enqueue(element: T) {
        storage.append(element)
    }
    
    // dequeue
    mutating func dequeue() -> T? {
        if storage.isEmpty {
            return nil
        } else {
            return storage.removeFirst()
        }
    }
    
    // peek
    func peek() -> T? {
        return storage.first
    }
    
    func whosTheLoser() -> T? {
        return storage.last
    }
    
}

//var airlineQueue = Queue<String>()
//
//airlineQueue.count
//airlineQueue.isEmpty
//
//airlineQueue.enqueue(element: "Spirit")
//airlineQueue.count
//airlineQueue.isEmpty
//
//airlineQueue.enqueue(element: "American")
//airlineQueue.count
//
//let airline = airlineQueue.peek()
//let airline2 = airlineQueue.whosTheLoser()
//
//airlineQueue.enqueue(element: "Delta")
//airlineQueue.enqueue(element: "United")
//airlineQueue.enqueue(element: "South African Airways")
//airlineQueue.enqueue(element: "Alaskan")
//
//print(airlineQueue.description)


// Stacks

// stack of pancakes, stacks of cash
// First-in Last-Out (FILO)

// [blueberry, choc chip, banana, original, strawberry]
// ----top----
//    strawberry
//    original
//    banana
//    choc chip
//    blueberry
// ---bottom-----


public struct Stack<T> {
    
    private var storage: [T] = []
    
    var count: Int {
        return storage.count
    }
    
    var isEmpty: Bool {
        return storage.isEmpty
    }
    
    mutating func push(element: T) {
        storage.append(element)
    }
    
    mutating func pop() -> T? {
        if storage.isEmpty {
            return nil
        } else {
            return storage.removeLast()
        }
    }
    
    func peek() -> T? {
        return storage.last
    }
}

var pancakeStack = Stack<String>()

pancakeStack.count
pancakeStack.isEmpty

pancakeStack.push(element: "blueberry")
pancakeStack.count

pancakeStack.push(element: "banana")
pancakeStack.push(element: "chocolate chip")
pancakeStack.push(element: "strawberry")
pancakeStack.count


let pancake = pancakeStack.pop()
let pancake2 = pancakeStack.pop()
