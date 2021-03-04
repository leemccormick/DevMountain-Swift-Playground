import UIKit

// Lecture on Week 9 Day 4 by Bryan

//I <3 BIG O

/*
 Space Complexity
O(1) – constant complexity – takes the same amount of space regardless of the input size

O(log n) – logarithmic complexity – takes space proportional to the log of the input size

O(n) – linear complexity – takes space directly proportional to the input size

O(n log n) – log-linear/quasilinear complexity – also called “linearithmic”, its space complexity grows proportionally to the input size and a logarithmic factor

O(n^2) – quadratic complexity – space complexity grows proportionally to the square of the input size
*/


/*
 Things to look out for in Space Complexity:
    -allocating memory for variables and constants
    -recursive function calls
 */


func addTwoNums(num1: Int, num2: Int) {
    let sum = num1 + num2
    print(sum)
}
//O(3) -> O(1)


func printArray(array: [Int]) {
    print(array.first ?? 0)
}
//T -- O(1)
//S -- O(N)

func copiedArray(array: [Int]) {
    let copied = array
    print(copied)
}
//O(N)

func findNumber(array: [Int], num: Int) -> Bool {
    for value in array {
        if value == num {
            return true
        }
    }
    return false
}
//O(N)

func findNumberRecursive(array: [Int], num: Int, iterator: Int) -> Bool {
    let check = array[iterator]
    print(check)
    if num == check {
        return true
    }
    return findNumberRecursive(array: array, num: num, iterator: iterator + 1)
}
//O(N^2)
//Recursive functions hold memory until they hit their final return...and allocate memory each time they're called.   This one stores N-space N number of times it gets called.  So N^2 space


func sumOfSomeNums(array: [Int], input: Int) {
    var sum = 0
    for i in 0...input {
        sum += array[i]
    }
    print(sum)
}
//O(N)

func fact(num: Int) {
    var fact = 1
    for i in 1...num {
        fact *= i
    }
    print(fact)
}
//O(1)

func nested(array: [Int]) {
    for i in array {
        for j in array {
            let sum = i + j
            print(sum)
        }
    }
}
//O(N)


func factorial(num: Int) -> Int {
    if (num <= 1) {
        return 1
    } else {
        return num * factorial(num: num - 1)
    }
}
//O(N)
//Function itself has constant space...but varies N number of times it gets called recursively


func fibo(num: Int) -> Int {
    print("Calling fibo with \(num)")
    if (num < 2) {
        return num
    }
    return fibo(num: num - 1) + fibo(num: num - 2)
}
//O(2^N)
//Again, function has constant space, but gets called recursively twice in each single call....so space is Exponential

//fibo(num: 5)

/* NOTE
 
 - Space complexity measures the total amount of memory that an algorithm or operation needs to run according to its input size.

 In this tutorial, we’ll see different ways to quantify space complexity. Moreover, we’ll analyze the total space taken via some examples.

 Lastly, we’ll discuss how space and time complexity impact each other.

 - Big-O notation describes an asymptotic upper bound. It represents the algorithm’s scalability and performance.

 Simply put, it gives the worst-case scenario of an algorithm’s growth rate. We can say that: “the amount of space this algorithm takes will grow no more quickly than this f(x), but it could grow more slowly.”

 Let’s see a few examples of expressing space complexity using big-O notation, starting from slowest space growth (best) to fastest (worst):

 O(1) – constant complexity – takes the same amount of space regardless of the input size
 O(log n) – logarithmic complexity – takes space proportional to the log of the input size
 O(n) – linear complexity – takes space directly proportional to the input size
 O(n log n) – log-linear/quasilinear complexity – also called “linearithmic”, its space complexity grows proportionally to the input size and a logarithmic factor
 O(n^2) – square/polynomial complexity – space complexity grows proportionally to the square of the input size
_______________________________________________________________________________________
 Algorithm Complexity
 Suppose X is treated as an algorithm and N is treated as the size of input data, the time and space implemented by the Algorithm X are the two main factors which determine the efficiency of X.

 Time Factor − The time is calculated or measured by counting the number of key operations such as comparisons in sorting algorithm.

 Space Factor − The space is calculated or measured by counting the maximum memory space required by the algorithm.

 The complexity of an algorithm f(N) provides the running time and / or storage space needed by the algorithm with respect of N as the size of input data.
 _______________________________________________________________________________________

 Space Complexity
 Space complexity of an algorithm represents the amount of memory space needed the algorithm in its life cycle.

 Space needed by an algorithm is equal to the sum of the following two components

 A fixed part that is a space required to store certain data and variables (i.e. simple variables and constants, program size etc.), that are not dependent of the size of the problem.

 A variable part is a space required by variables, whose size is totally dependent on the size of the problem. For example, recursion stack space, dynamic memory allocation etc.

 Space complexity S(p) of any algorithm p is S(p) = A + Sp(I) Where A is treated as the fixed part and S(I) is treated as the variable part of the algorithm which
 
 __________________________________________________________________________________________
 Time Complexity
 Time Complexity of an algorithm is the representation of the amount of time required by the algorithm to execute to completion. Time requirements can be denoted or defined as a numerical function t(N), where t(N) can be measured as the number of steps, provided each step takes constant time.

 For example, in case of addition of two n-bit integers, N steps are taken. Consequently, the total computational time is t(N) = c*n, where c is the time consumed for addition of two bits. Here, we observe that t(N) grows linearly as input size increases.
 
 _________________________________________________________________________________________

 https://www.baeldung.com/cs/space-complexity
 https://www.cs.utexas.edu/users/djimenez/utsa/cs1723/lecture2.html#:~:text=Time%20complexity%20is%20a%20function%20describing%20the%20amount,of%20the%20amount%20of%20input%20to%20the%20algorithm.
 https://www.tutorialspoint.com/time-and-space-complexity-in-data-structure
 https://www.hackerearth.com/practice/basic-programming/complexity-analysis/time-and-space-complexity/tutorial/
 //______________________________________________________________________________________
 */
