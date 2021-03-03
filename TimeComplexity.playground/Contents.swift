import UIKit

// Lecture Week 9 : Day 3 At DevMoutain By MaxPoff, Cameron

//BIG O Notation

var intArray = [1,2,3,4,5]
var stringArray = ["Lee","is","the","best"]

intArray.append(7) //o(1)
intArray.insert(6, at: 4) //o(n)
intArray.count
intArray.removeAll() //o(n)
intArray.remove(at: 5) //o(n)
//intArray.sorted { (<#Int#>, <#Int#>) -> Bool in } //O(n log n)


//MARK: - Properties
let sortedArray = [1,2,3,4,5,6,7,8,9,10,13,14,16,18,19,21]
let names: [String] = ["Kratos","Kratos","Kratos","Kratos","Kratos"]

//Constant
//O(1)
func first(names: [String]) {
    if let first = names.first {
        print(first)
    } else {
        print("no names")
    }
}

//first(names: names)

//Linear
//O(n)
//O(2n + 6) == O(n) //Ignore the coefficients
func printAllNames(names: [String]) {
    for name in names {
        print(name)
    }
    
    for name in names {
        print(name)
    }
}

//printAllNames(names: names)

//Quadratic
//O(n^2)
func printNames(names: [String]) {
    for _ in names {
        for name in names {
            print(name)
        }
    }
}

//printNames(names: names)

//Logarithmic
//O(log n)
//This func is based on the assumption that the input is sorted
func find(num: Int, inArray array: [Int]) -> Bool {
    
    let middleIndex = array.count / 2
    print("Total Count: \(array.count). Middle Index: \(middleIndex)")
    print("Num at middle index: \(array[middleIndex])")
    
    if num == array[middleIndex] {
        return true
    } else if array.count == 1 {
        return false
    }
    
    if num < array[middleIndex] {
        return find(num: num, inArray: [Int](array[..<middleIndex]))
    } else {
        return find(num: num, inArray: [Int](array[middleIndex...]))
    }
}

//find(num: 3, inArray: sortedArray)
//let sortedArray = [1,2,3,4,5,6,7,8,9,10,13,14,16,18,19,21]

//Exponential
//O(2^n) //Changes to O(3^n) when comment is added in
func f(_ num: Int) -> Int {
    
    if num <= 0 {
        return 1
    }
    
    return f(num - 1) + f(num - 1) //+ f(num - 1)
}

//f(3)

//Quasilinear / Linearithmic
//O(n log n)
//.sort() --- This shows the importance of being familiar with Apple's Documentation

//MARK: - Cheat Sheet
/*
 
 Constant: O(n)
    - Time taken is independent of the amount of data
 
 Linear: O(n)
    - Time taked is directly proportional to the amount of data
 
 Quadratic: O(n^2)
    - Time taken is proportional to the amount of data squared
 
 Logarithmic: O(log n)
    - Time taken is proportional to the logarithm of the amount of data
    - 2^3 = 8 == log(2)8 = 3
 
 Exponential: O(2^n)
    - Time taken is proportional to a constant raised to a power equal to the amount of data
 
 Quasilinear / Linearithmic: O(n log n)
    - Time taken is proportional to the logarithm of the amount of data, multiplied by the amount of data
 
 */

/* NOTE
 
 What Is Big-O Notation?
 Big-O notation gives you a way to calculate how long it will take to run your code. You can physically time how long your code takes to run, but with that method, it is hard to catch small time differences. For example, the time it takes between running 20 and 50 lines of code is very small. However, in a large program, those inefficiencies can add up.

 Big-O notation counts how many steps an algorithm must execute to gauge its efficiency. Approaching your code in this manner can be very effective if you need to tune your code to increase efficiency. Big-O notation will enable you to measure different algorithms by the number of steps it requires to run and objectively compare the algorithms' efficiency.
 
 Big O Notation uses mathematical functions to describe algorithm’s runtime performance(sometimes it is called the program’s asymptotic performance). The function is written within parentheses after a capital letter O. For example, O(N²) means that algorithm’s runtime(or memory or whatever you are measuring) increases as the square of N (N usually represents array length).
 
 Basics
 There are five basic rules for calculating algorithm’s Big O Notation:
 If an algorithm performs a certain sequence of steps f(N) times for a mathematical function f, it takes O(f(N)) steps.
 If an algorithm performs an operation that takes f(N) steps and then performs another operation that takes g(N) steps for function f and g, the algorithm’s total performance is is O(g(N) + f(N)).
 If an algorithm takes O(g(N) + f(N)) steps and the function f(N) is bigger than g(N), algorithm’s performance can be simplified to O(f(N)).
 If an algorithm performs an operation that takes f(N) steps, and for every step performs another operation that takes g(N) steps, algorithm’s total performance is O(f(N)×g(N)).
 
 
 http://web.mit.edu/16.070/www/lecture/big_o.pdf
 https://www.makeuseof.com/what-is-big-o-notation/
 https://medium.com/@stalonadsl948/big-o-notation-for-dummies-999a7e3fa1ec
 

 
 //______________________________________________________________________________________
 */
