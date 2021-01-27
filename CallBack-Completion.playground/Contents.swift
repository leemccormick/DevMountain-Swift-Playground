import UIKit

// Callbacks and Completion Handler

// MARK: - Function
func saySomething(greeting: String) {
    print(greeting)
}

saySomething(greeting: "Hey there!")

// MARK: - Completion
// -> completion: () -> Void
func saySomethingWithCompletion(greeting: String, completion: @escaping (String) -> Void) {
    print(greeting)
    //It ran saySomethingWithCompletion then call this one
    completion("How are you? for completion in response.")
}

saySomethingWithCompletion(greeting: "Hey Completion !") { (response) in
    print(response)
}

// @escaping Allow to save data in the memory...the result in the memory. Should use @escaping with this completion case. If we don't have  @escaping, when it get completed the data would be wipe out from memory before completion?? 
func saySomethingWithCompletionNeverGetCall(greeting: String, completion: @escaping (String) -> Void) {
    print(greeting)
    //It ran saySomethingWithCompletion then call this one
    //completion("How are you? for completion in response.")
}

saySomethingWithCompletionNeverGetCall(greeting: "Hey Completion !") { (response) in
    print(response)
}

func highOrLow(number: Int, completion: @escaping (String) -> Void) {
    if number <= 5 {
        completion("Low")
    } else {
        completion("High")
    }
}

// Similar  to return in function
highOrLow(number: 7) { (result) in
    if result == "High" {
        print("Lower my blood pressure.")
    } else {
        print("Do something else...")
    }
}
