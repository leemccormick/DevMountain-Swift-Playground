import UIKit

// PizzaCalculator == Week6 Day1
func caculatePizzasPerParty(hunger: Int, people: Double) -> Int {
    var pies: Int = 1
    switch hunger {
    case 0:
        let pieAmount = (people * 1.0) / 8.0
        pies = Int(ceil(pieAmount))
    case 1:
        let pieAmount = (people * 2.0) / 8.0
        pies = Int(ceil(pieAmount))
    case 2:
        let pieAmount = (people * 4.0) / 8.0
        pies = Int(ceil(pieAmount))
    default:
        pies = 1
    }
    return pies
}

caculatePizzasPerParty(hunger: 2, people: 5)
