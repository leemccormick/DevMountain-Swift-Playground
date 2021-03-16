import UIKit

//TREES :)

//MARK: - Queue -- for our Breadth First Search
public struct Queue<T> {
    fileprivate var array = [T]()
    
    public var isEmpty: Bool {
        return array.isEmpty
    }
    
    public mutating func enqueue(_ element: T) {
        array.append(element)
    }
    
    public mutating func dequeue() -> T? {
        if isEmpty {
            return nil
        } else {
            return array.removeFirst()
        }
    }
    
    public mutating func peek() -> T? {
        return array.first
    }
} //End of struct

//MARK: - Tree Class
public class TreeNode<T: Equatable> {
    
    var value: T
    var children: [TreeNode] = []
    
    init(_ value: T) {
        self.value = value
    }
    
    func add(_ child: TreeNode) {
        children.append(child)
    }
    
    func forEachDepthFirst(visit: (TreeNode) -> Void) {
        visit(self)
        children.forEach( { $0.forEachDepthFirst(visit: visit) })
    }
    
    func search(for value: T) -> TreeNode? {
        var result: TreeNode?
        self.forEachDepthFirst { (node) in
            if node.value == value {
                result = node
            }
        }
        return result
    }
    
    func forEachLevelOrder(visit: (TreeNode) -> Void) {
        visit(self)
        var queue = Queue<TreeNode>()
        children.forEach { queue.enqueue($0) }
        while let node = queue.dequeue() {
            visit(node)
            node.children.forEach { queue.enqueue($0) }
        }
    }
    
    func breadthFirstSearch(for value: T) -> TreeNode? {
        var result: TreeNode?
        self.forEachLevelOrder { (node) in
            if value == node.value {
                result = node
            }
        }
        return result
    }
    
} //End of class



func makeBeverageTree() -> TreeNode<String> {
    let tree = TreeNode("Beverages")
    
    let hot = TreeNode("hot")
    let cold = TreeNode("cold")
    
    let tea = TreeNode("tea")
    let coffee = TreeNode("coffee")
    let cocoa = TreeNode("cocoa")
    
    let blackTea = TreeNode("black")
    let greenTea = TreeNode("green")
    let chaiTea = TreeNode("chai")
    
    let soda = TreeNode("soda")
    let milk = TreeNode("milk")
    
    let gingerAle = TreeNode("ginger ale")
    let rootBeer = TreeNode("root beer")

    tree.add(hot)
    tree.add(cold)
    
    hot.add(tea)
    hot.add(coffee)
    hot.add(cocoa)
    
    cold.add(soda)
    cold.add(milk)
    
    tea.add(blackTea)
    tea.add(greenTea)
    tea.add(chaiTea)
    
    soda.add(gingerAle)
    soda.add(rootBeer)
    
    return tree
}

let tree = makeBeverageTree()

//just printing values
tree.forEachDepthFirst(visit: { print($0.value) })
print("\n")
tree.forEachLevelOrder { print($0.value) }

print("\n")

//find using Depth First Search
func find(_ drink: String) {
    if let searchResult = tree.search(for: drink) {
        print("Found node: \(searchResult.value)")
    } else {
        print("Could not find \(drink)")
    }
}

find("milk")
find("coffee")
find("bitter lemon")

print("\n")

//find using Breadth First Search
func findAgain(_ drink: String) {
    if let searchResult = tree.breadthFirstSearch(for: drink) {
        print("Found node: \(searchResult.value)")
    } else {
        print("Could not find \(drink)")
    }
}

findAgain("soda")
findAgain("chai")
findAgain("mountain dew")
