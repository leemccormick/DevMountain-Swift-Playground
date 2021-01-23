import UIKit

var str = "Hello, playground"

//Diagon Alley Shopping Trip
//In this project, you will write about your first trip to Diagon alley for your school supplies. You will do this by creating variables or constants, whichever is more appropriate, of your personal data. You'll use what you've learned about the various operators to keep track of how much gold, or galleons, you have... You'll also use control flow to help you decide which house you hope to be in, and what pet to take with you on day one! Let's tour Diagon Alley!

//Part One - Basic Personal Details

let firstName: String = "Lee"
let lastName: String = "McCormick"
var age: Int = 31
let birthday: String = "10 Dec 1989"
var preferredWandLength: Double = 9.3
var preferredHouse: String = "Gryffindor"

//create a chaterTraitInString using String Type
var charaterTraitInString: String = "Loyal"

/* Array
 var c: [Int]
 c = Array()
 c += [4]
 c += [5]
 */

var isTiredOfHarryPotter: Bool = true

//_________________________________________________________________________________________

//Part Two - Mathematical Operators

var vaultsGoldVolume: Double = 150.0

//buy your first wand. The cost is 24.3
// or this way >> vaultsGoldVolume = vaultsGoldVolume - 24.3
vaultsGoldVolume -= 24.3


//purchase a very fine set of Robes that cost you a flat 45 Galleons.
// or this way >> vaultsGoldVolume = vaultsGoldVolume - 45.00
vaultsGoldVolume -= 45.00

//A long lost relative left you some gold to be used on your first day. Add 300 Galleons
// or this way >> vaultsGoldVolume = vaultsGoldVolume + 300
vaultsGoldVolume += 300

//A group of Slytherins are playing Wizard dice. You play a few rounds and double the gold in your purse.
// or this way >> vaultsGoldVolume = vaultsGoldVolume * 2
vaultsGoldVolume *= 2

//You inquire about a pack of bloodstained cards and he says he will give it to you for one tenth of all the gold in your pocket
// or this way >>vaultsGoldVolume = vaultsGoldVolume - (vaultsGoldVolume * 0.1)
vaultsGoldVolume *= 0.9


//_________________________________________________________________________________________

//Part Three - Conditional Love

// When choosing an owl at the Eeylops Owl Emporium, I want to choose an owl that has a black beak and white feathers. Once I find an owl like that, I will exclaim "This one's mine!". If the owl does not match what I want, I will say "Pass".
var owl: String = "a black beak and white feathers"

if owl == "black beak" && owl == "white feathers" {
    print("This one's mine!")
} else {
    print("Pass")
}

//I heard that my favorite Quidditch team, The Holyhead Harpies, suggests a certain type of Broom. So, I will only buy a broom if it is sponsored by them.
var isSponseredByQuidditch: Bool = true

if isSponseredByQuidditch {
    print("I will buy a broom.")
} else {
    print("I will look for a  broom that is sponsered by Quidditch team.")
}

//While taking a break and enjoying a sweet treat at Florean Fortescue's Ice Cream Parlour, you begin to daydream about the four houses of Hogwarts. Slytherin for the cunning and ambitious, Gryffindor for the brave, Hufflepuff for the Loyal, and Ravenclaw for those with great wit. What could be the specific thought process and logic which the sorting hat employs in order to appropriately place students?

var studentCharacterTrait: String = "brave"
var house: String

if studentCharacterTrait == "cunning and ambitious" {
    house = "Slytherin"
} else if  studentCharacterTrait == "brave" {
    house = "Gryffindor"
} else if studentCharacterTrait == "Loyal" {
    house = "Hufflepuff"
} else if studentCharacterTrait == "great wit" {
    house = "Ravenclaw"
} else {
    print("Not sure which house the student belong to.")
}

//Doing it by array and for in
//create a chaterTraitInString using Array Type
var characterTrait: [String] = ["Brave", "Loyal", "Ambitious", "Intelligent", "Lovely"]

for trait in characterTrait {
    
    if trait == "Brave" {
        print("Your house is Slytherin")
    } else if  trait  == "Loyal" {
        print("Your house is Ravenclaw")
    } else if trait == "Ambitious" {
        print("Your house is Hufflepuff")
    } else if trait == "Intelligent" {
        print("Your house is Ravenclaw")
    } else {
        print("Not sure which house the student belong to.")
    }
    
}

//_________________________________________________________________________________________

//Part Four - Functions
//In part four, we are going down to Honeydukes where we can buy all sorts of delicious treats!

//Honeydukes sells their Fizzing Whizzbees for 2 galleons each. Write a function that takes in an Int to represent how many Fizzing Whizzbees you would like to buy. Inside the body of the function, subtract the appropriate amount of money form your vaults gold (part 2), based on the amount of Fizzing Whizzbees you are purchasing.

func purchaseFizzingWhizzbees(amount: Int, goldVaults: Double) {
    let cost: Double = Double(amount) * 2.0
    let newGoldVaults = goldVaults
    let totalGoldVaultsAfterPurchase = newGoldVaults - cost
    print("Total Gold Vaults After Purchase : \(totalGoldVaultsAfterPurchase )")
}

func buyFizzingWhizzbees(howMany: Double) {
    let priceOfFW = 2.0
    let totalCostOfFW = priceOfFW * howMany
    let finalCostOfFW = vaultsGoldVolume - totalCostOfFW

    print(finalCostOfFW)
}
buyFizzingWhizzbees(howMany: 5)
purchaseFizzingWhizzbees(amount: 5, goldVaults: vaultsGoldVolume)
purchaseFizzingWhizzbees(amount: 10, goldVaults: 400)






//You decide you want to buy some Chocolate Frogs for you whole family, but at 3 gelleons each, you aren’t entirely sure you have enough money. Write a function that takes in the size of your family as a parameter. In the body of the function, determin how much it would cost to buy all the Chocolate Frogs that you would need, and then use a conditional to determine if you have enough money in your vault or not. If you do, print out “We’ll take the lot.” If you do not have the money, print “No thanks, I’m all set.”

func purchaseChololateFrogForFamily(familySize: Int){
    let costOfChocolateFrogs = familySize * 3
    if Double(costOfChocolateFrogs) < vaultsGoldVolume {
        print("We will take the lot")
    } else {
        print("No thanks, I'm all set")
    }
}

purchaseChololateFrogForFamily(familySize: 200)


//_________________________________________________________________________________________

//Part Five - Loops, Loops, Loops, repeat

//  Create a variable called bookPrices and set it equal to [12, 15, 22, 10, 8, 17]. Combining a loop and a conditional statement, iterate through each price in bookPrices and, if the book is greater than 15 galleons, print “This book is expensive!” Otherwise, print “This book isn’t too bad.”
 

var bookPrices: [Int] = [12, 15, 22, 10, 8, 17]

for eachBook in bookPrices {
    if eachBook > 15 {
        print("The book is expensive.")
    } else {
        print("The book is not too bad.")
    }
}

//  On your way out of Diagon Alley you realize you still have money in your vault, and it doesn’t do you any good there. So you decide to head back to Honeydukes to load up on as many Pixie Puffs as you can get. The Pixie Puffs are 3 galleons each. Write a loop continues to buy Pixie Puffs as long as you have enough money for them. Create a variable called totalPixiePuff to keep track of how many you were able to buy.

var totalPixiePuff = 0

while vaultsGoldVolume > 3 {
    // substract the cost of Pix Puffs
    vaultsGoldVolume -= 3
    totalPixiePuff += 1
}

print("I have \(vaultsGoldVolume) vaults Gold left, and I bought \(totalPixiePuff) Pixie Puffs.")

//_________________________________________________________________________________________


/*
 // Part Six Extra - FizzBuzz Deep Dive
 
 //set value of range from 1 to 100
 
 let closeRange = 1...100
 
 //Loop to each number in range
 for number in closeRange {
 
 //check the number in looping divided by 3 and 5 and has no reminder, then print out the word "Devmountain", but this condition will never print out because the if statment above will excucute before.
 if number % 3 == 0 && number % 5 == 0 {
 print("DevMountain")
 
 // then check if the number in looping divided by 5 and has no reminder, then print out the word "Mountain"
 } else if number % 5 == 0 {
 print("Mountain")
 
 
 // then check if the number in looping divided by 3 and has no reminder, then print out the word "Dev"
 } else if number % 3 == 0 {
 print("Dev")
 
 } else {
 print(number)
 }
 }
 
 // The code below will run, but logic error
 
 let halfRange = 1..<100
 
 for number in halfRange {
 if number % 3 == 0 {
 print("Dev")
 } else if number % 5 == 0 {
 print("Mountain")
 } else if number % 3 == 0 && number % 5 == 0 {
 print("Devmountain")
 } else {
 print(number)
 }
 }
 
 */

//Honeydukes sells their Fizzing Whizzbees for 2 galleons each. Write a function that takes in an Int to represent how many Fizzing Whizzbees you would like to buy. Inside the body of the function, subtract the appropriate amount of money form your vaults gold (part 2), based on the amount of Fizzing Whizzbees you are purchasing.

