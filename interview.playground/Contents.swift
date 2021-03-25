import UIKit


// My First White Board Interview
/* In TextEditor
 
 var randomString = "sllmsmsmlsmslmlmsmsmsmsmlsllllmsmmslm"

 Var lee = “Lee lee”

 func findString(str: String) —> String {

 Var newStr = str

 newStr.sorted()
 newStr.reverse()

 Return newStr
 }
 Eeeel

 "sssssssssssmmmmmmmmmmmmmmlllllllllll”
 */

var randomString = "sllmsmsmlsmslmlmsmsmsmsmlsllllmsmmslm"

func sortedStringByLee(str: String) -> String {
    let newStr = str
    let path = newStr.sorted()
    var returnStr = ""
    for p in path {
        returnStr += p.lowercased()
    }
    let newReversedStr = returnStr.reversed()
    let str = String(newReversedStr)
    return str
}

func sortedStringByCameron(str: String) -> String {
    return String(str.sorted().reversed())
}

func sortStringByMax(string: String) -> String {
    
    var smallList: [Character] = []
    var mediumList: [Character] = []
    var largeList: [Character] = []
    var unknown: [Character] = []
    
    for i in string {
        if i.lowercased() == "s" {
            smallList.append(i)
            
        } else if i.lowercased() == "m" {
            mediumList.append(i)
            
        } else if i.lowercased() == "l" {
            largeList.append(i)
            
        } else {
            unknown.append(i)
        }
    }
    
    let finalString = smallList + mediumList + largeList
    
    print("There are \(smallList.count) small shirts. \nThere are \(mediumList.count) medium shirts. \nThere are \(largeList.count) large shirts. \nThere are \(finalString.count) total shirts. \nEncountered \(unknown.count) unknown sizes.")
    
    return String(finalString)
}

sortedStringByLee(str: randomString)
sortedStringByCameron(str: randomString)
sortStringByMax(string: randomString)
