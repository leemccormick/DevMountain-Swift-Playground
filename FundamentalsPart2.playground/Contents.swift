import UIKit
import PlaygroundSupport

//05/01/2021 Day2

/*
//Types covered: String, Int, Double, Bool, Date
var classStartDate: String
classStartDate = "January 4th, 2021"

//univeral Greenwich Mean Time ‎(UTC)‎timeZone and use + or - for your own time zone
var classStartDateWithDateType: Date

//univeral Greenwich Mean Time ‎(UTC)‎timeZone and use + or - for your own time zone
//() >> Current time zone
classStartDateWithDateType = Date()

classStartDateWithDateType = DateComponents(calendar: .autoupdatingCurrent, timeZone: .current, year: 2021, month: 1, day: 4, hour: 10, minute: 00, second: 00).date!

classStartDateWithDateType = DateComponents(calendar: .autoupdatingCurrent, timeZone: .current, year: 2021, month: 1, day: 4).date!

DateComponents(year: 2021, month: 1, day: 4).date!


// classStartDateWithDateType = Date.timeIntervalSince(<#Date#>)
print(classStartDate)





//Using View and Playground in Image
let view = UIView(frame: CGRect(x: 0, y: 0, width: 570, height: 597))
view.backgroundColor = .black
let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 570, height: 597))
view.addSubview(imageView)

//Give it a type
let image: UIImage

//initialize the image
image = UIImage(named: "hogwarts.jpg")!
imageView.image = image
imageView.contentMode = .scaleAspectFit
PlaygroundPage.current.liveView = view
PlaygroundPage.current.liveView

//Operalator
// A lot of type of Operalator
10 == 4
10 != 4

var sum = 100
sum + 200
print(sum) //sum is 100 because did not assign the 200 with =
sum += 200
print(sum) // sum got assign with = to 100, print 300

//Always use print statement
var sum2 = 100
sum2 *= 4
sum2 += 200
sum2 /= 3
sum2 -= 100
sum2 /= 25
print("This is sum2 : \(sum2)")

//You can not - subtract string
var name = "Lee"
let status = " is awesome."
let sentence = name + status
print(name + status)
print(sentence)

//Change the value of name, but not status was never manipulate it.
name += status

var sum3 = 300
//This is two lines are doing the same job to reassign 20 to sum3
sum3 = sum3 + 20
sum3 += 20

//Checking number is even or odd using %2, even == 0, odd == 1
var number = 38
number % 2

var number2 = 38
let remainder = number2 % 3
number2 /= 3
print("\(number) with a remainder of \(remainder)")

    
//Comparison Operation
5 == 3
5 != 3
5 > 3
5 < 3
5 >= 3
let testOperator = 5 <= 3

if testOperator {
    print("5 <= 3 : is true.")
} else {
    print("5 <= 3 : false")
}

//Let work on Harry Potter AGAIN !!!

let houseCupWinners = "Slytherin"
let nerds = "Ravenclaw"
let loyal = "Hufflepuff"
let braveOrWhatever = "Gryffindor"

//if is true, then it never go to else if or next if.
if houseCupWinners == "Slytherin" {
    print("Howarts has been returned to glory!")
} else if houseCupWinners == "Gryffindor" {
    print("Howarts is going down hill.")
} else if houseCupWinners == "Ravenclaw" {
    print("The ravans take it.")
} else {
    print("Sad day.")
}

//print 2 true conditions by if
if houseCupWinners == "Slytherin" {
    print("Howarts has been returned to glory!")
}

if houseCupWinners  == "Slytherin" {
    print("Howarts is going down hill.")
}

// using ||
if houseCupWinners == "Slytherin" || houseCupWinners == "Ravenclaw" {
    print("Good day")
} else {
    print("Bad day")
}

//compare if by Int
let gPoints = 100
let sPoints = 100

if gPoints > sPoints {
    print("G wins")
} else if sPoints > gPoints {
    print("S wins")
} else {
    print("tie")
}

if gPoints > sPoints || sPoints > gPoints {
    print("we got the winner.")
} else {
    print("tie")
}

//using Bool
let sunny = true
let warm = true
let windy = false

if sunny == true && warm == true && windy == false {
    print("let's go fishing.")
} else {
    print("Sleeping time.")
}

if sunny == true || warm == true || windy == false {
    print("let's go fishing.")
} else {
    print("Sleeping time.")
}

if sunny  || warm  || windy  {
    print("let's go fishing.")
} else {
    print("Sleeping time.")
}

if sunny == true && warm == true  {
    print("let's go fishing1.")
} else if windy == false && warm == true  {
    print("let's go fishing2.")
} else if sunny == true && windy == false  {
        print("let's go fishing3.")
} else {
    print("Sleeping time.")
}

//compare the first condition and then the next one
if sunny == true && warm == true || windy == false  {
    print("let's go fishing1.")
} else if windy == false && warm == true  {
    print("let's go fishing2.")
} else if sunny == true && windy == false  {
        print("let's go fishing3.")
} else {
    print("Sleeping time.")
}


//Another Harry Potter
let nameForSnape = "Snape"
let age = 38
let house = "Slytherin"
let pet = "Owl"
let role = "Professor"
let isHero = true

if nameForSnape == "Serverus" || name == "Snape" {
    print(1)
//This is control flow
} else if 7 > 8  {
    print(2)
} else if 19 >= 10 {
    print(3)
} else if age == 38 || age == 40 || pet == "Owl" {
    print(4)
} else {
    print(5)
}

let gPoints1 = 100
let sPoints1 = 99

//The order of statement is important to run the right logic
if gPoints1 == sPoints1 {
    print("It's a tie.")
} else if sPoints1 >= gPoints1 {
    print("S1 wins")
} else if gPoints1 > sPoints1 {
    print("G1 wins")
}


// Array from myself
 
let scholarshipStudent1 = "Harry"
let scholarshipStudent2 = "Hermoine"
let scholarshipStudent3 = "Ron"
let scholarshipStudent4 = "Naville"
let scholarshipStudent5 = "Draco"


let scholarshipForStudenst: [String]
scholarshipForStudenst = [scholarshipStudent1,scholarshipStudent2,scholarshipStudent3,scholarshipStudent4,scholarshipStudent5]

//Afternoon Lecture Function in %

var ronsScore = 38
var harrysScore = 39
var nevillesScore = 47
var hermoniesScore = 44

hermoniesScore += 5
hermoniesScore *= 2
if hermoniesScore > 100 {
    hermoniesScore = 100
}

func calculateStudentsFinalScoreByLee(name: String, initialScore: Int) -> String {
    var newScore = initialScore
    newScore += 5
    newScore *= 2
    if  newScore > 100 {
        newScore = 100
    }
    return "\(name) : \(newScore) %"
}

calculateStudentsFinalScoreByLee(name: "Harry", initialScore: harrysScore)

//Coding line by line is Control flow
func calculateStudentsFinalScore(studentName: String, initialScore: Int) -> String {
    let scoreWithBonus = initialScore + 5
    var scoreAsPercentage = scoreWithBonus * 2

    if  scoreAsPercentage > 100 {
        scoreAsPercentage = 100
    }
    //print(scoreAsPercentage)
    return "\(studentName) : \(scoreAsPercentage) %"
}


func calculateStudentsFinalScoreShortVersion(studentName: String, initialScore: Int) -> String {
    return "\(studentName) : \((initialScore + 5) * 2) %"
}

//This is 400 lines for 400 students, that why we use array.
let ronFinalScore = calculateStudentsFinalScore(studentName: "Ron", initialScore: ronsScore)
print(ronFinalScore)

//calculateStudentsFinalScore(initialScore: harrysScore)
//calculateStudentsFinalScore(initialScore: nevillesScore)

//Another Functions
var studentName = "Harry"
var studentAge = 18

func printStudentDetails(studentName: String, studentAge: Int) {
    print("Hi my name is \(studentName) and I am \(studentAge)")
}

printStudentDetails(studentName: studentName, studentAge: studentAge)

//Loops
//While Loop
var x = 0
while x < 10 {
    print( "\(x) : Lee is awesome!")
    x += 1
}

while x < 10 {
    if x % 2 == 0 {
        print("\(x) is even. ")
    } else {
        print("\(x) is odd.")
    }
}

//For-in
let range = 1...15
for _ in range {
    print("Hello")
}

for n in range {
    print(n)
}

let students = ["Harry", "Hermione", "Ron", "Naville"]

for name in students {
    print(name)
}

for letter in "Lee McCormick" {
    print(letter)
}

for letter in "Hello, World" {
    print(letter)
}

for letter in "Hello, World" {
    if letter == "e" || letter == "o" || letter == "a" || letter == "i" || letter == "0" {
        print(letter)
    }
}

func printVowels(sentence: String) {
    for letter in sentence {
        if letter == "e" || letter == "o" || letter == "a" || letter == "i" || letter == "0" {
            print(letter)
        }
    }
}

printVowels(sentence: "Lee McCormick")

//guessMe Game >>> This is call control flow
var guessMe = 54

while guessMe < 100 {
    if guessMe % 4 == 0 || guessMe % 5 == 0 {
        guessMe += 25
    } else if guessMe % 3 == 0 {
        guessMe -= 27
    } else {
        guessMe += 3
    }
    guessMe += 22
}

print("guessMe is \(guessMe)")

/*
 Vocab: Type Declaration - When we directly set the type that a property will be.
 let classStartDateWithDateType: Date

 Vocab: Type Inference - Type Inference enables a compiler to deduce the type of a particular expression automatically.
 let firstName = "Lee"
 
 Vocab: Assignment Operator - This is the equal sign(=), and assign a value to a property.
 
 Vocab: Logical Operators - There are operators with Boolean(logical) values and returns a Boolean value. It is mainly used to control program flow with if statements(or other controls statemnets)
 1) Logical -OR operator ||
 2) Logical -AND operator &&
 
 vocab: "\() -> String Interpolation"
 Basic Operators : = , + , - , / , *, += , -= , *=, /=
 
 Modulus operator >> % , the leftover from divider, remainder. For Example. Table on the odd row using information in the right or left. Using the row number and modulus. Only for numbers.
 
 Swift Comparison Operators
 == equal to
 != not equal to
 > greater than
 < less than
 >= greater than or equal to
 <= less than or equal to
 */
*/


// Friday assessment Date

var classStartDate: String
classStartDate = "January 4th, 2021"

//univeral Greenwich Mean Time ‎(UTC)‎timeZone and use + or - for your own time zone
var classStartDateWithDateType: Date

//univeral Greenwich Mean Time ‎(UTC)‎timeZone and use + or - for your own time zone
//() >> Current time zone
classStartDateWithDateType = Date()

classStartDateWithDateType = DateComponents(calendar: .autoupdatingCurrent, timeZone: .current, year: 2021, month: 1, day: 4, hour: 10, minute: 00, second: 00).date!

classStartDateWithDateType = DateComponents(calendar: .autoupdatingCurrent, timeZone: .current, year: 2021, month: 1, day: 4).date!

//DateComponents(year: 2021, month: 1, day: 4).date!


// classStartDateWithDateType = Date.timeIntervalSince(<#Date#>)
print(classStartDate)

// Specify date components
var dateComponents = DateComponents()
dateComponents.year = 1980
dateComponents.month = 7
dateComponents.day = 11
//dateComponents.timeZone = TimeZone(abbreviation: "JST") // Japan Standard Time
//dateComponents.hour = 8
//dateComponents.minute = 34

// Create date from components
let userCalendar = Calendar(identifier: .gregorian) // since the components above (like year 1980) are for Gregorian
let someDateTime = userCalendar.date(from: dateComponents)

func convertDateFormatter(date: String) -> String {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "yyyy-MM"//this your string date format
    dateFormatter.timeZone = NSTimeZone(name: "UTC") as TimeZone?
    dateFormatter.locale = Locale(identifier: "your_loc_id")
    let convertedDate = dateFormatter.date(from: date)

    guard dateFormatter.date(from: date) != nil else {
        assert(false, "no date from string")
        return ""
    }

    dateFormatter.dateFormat = "yyyy MMM"///this is what you want to convert format
    dateFormatter.timeZone = NSTimeZone(name: "UTC") as TimeZone?
    let timeStamp = dateFormatter.string(from: convertedDate!)

    return timeStamp
}

let firstDate = convertDateFormatter(date: "2021-12")
print(firstDate)
