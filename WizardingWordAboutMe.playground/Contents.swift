import UIKit

//01/04/2021 This is my first day at Dev Mountain

var str: String = "Hello, playground"

//This is using type inference
var str1 = "Hello"
600
"Yay"

34 + 2 * 4

"Hello" + " " + "Playground"

print(63)
print("yay")
print(str)

//Swift is type safe language. But JavaScript is not type safe language.

//contants can not change using let
let firstName: String
let firstNameAboutMe: String = "Lee"
let lastName: String
let gender: String
let ethnicity: String
let bloodStatus: String

//type decoration
var helloTypeDecoration: String

//type infulrance
var hello = "Hello"



//variable can change using var
var hasBeard: Bool
var age: Int?
print(age ?? 0.0)
var wandLength: Double

//Float has lower position, 32 bit computer can not handle double.
var wandLengthInFloat: Float = 3.446678766

//can assign at a String, Int and Date or anything else.
let hogwartsDateFounded: Int = 990

//This is using lower camel case, but type we use upper camel case.
var hasLongRedBeard: Bool

//Should be variable because you are not born as a deathEater
var deathEater: Bool


//now we assign the value
firstName = "Severus"
lastName = "Snape"
age = 38
print(age!)
age = 31
print(age!)

print(age! + 7)

//Double can change round Int with .0, No error
wandLength = 13
wandLengthInFloat = 13

hasBeard = false
bloodStatus = "Half-Blood"
deathEater = false

//immutable value because let
//firstName = "Lee"

