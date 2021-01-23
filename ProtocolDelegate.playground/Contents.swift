import UIKit

protocol BossDelegate: AnyObject {
    func runInstruction()
    func doDetailJob()
}

class Boss {
    
    weak var delegate: BossDelegate?
    
    func tellInternToWork() {
        if let delegate = delegate {
            print("The intern is :: \(delegate)")
        }
        delegate?.runInstruction()
        delegate?.doDetailJob()
    }
}

class InternOne: BossDelegate {
    func doDetailJob() {
        print("I have to do a lot of job, but boss only say short instruction.")
    }
    
    func runInstruction() {
        print("Intern One running it's instructions from boss.")
    }
}

class InternTwo: BossDelegate {
    func doDetailJob() {
        print("I have to do a lot of job, but boss only say short instruction.")
    }
    
    func runInstruction() {
        print("Intern Two running it's instructions from boss.")
    }
}

let boss = Boss()
let internOne = InternOne()
let internTwo = InternTwo()

boss.tellInternToWork() // Notice, nothing prints out...
boss.delegate // That is because we have no delegate, so the boss essentially told no one to run it's runInstruction() function.

boss.delegate = internOne // Now we have assigned an intern to the boss
boss.tellInternToWork() // Now, THAT intern (1), wiill run IT'S runInstruction() function.

boss.delegate = internTwo // Now we have assigned a different intern to the boss
boss.tellInternToWork() // Now, THAT intern (2), wiill run IT'S runInstruction() function.


//internOne.runInstruction()
//internTwo.runInstruction()
