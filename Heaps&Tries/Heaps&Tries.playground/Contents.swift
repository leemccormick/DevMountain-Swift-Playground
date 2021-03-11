import UIKit

//MARK: - Heaps

class MinHeap<T: Comparable> {
    
    private var data: [T] = []
    
    private func getLeftChildIndex(for parentIndex: Int) -> Int {
        return 2 * parentIndex + 1
    }
    
    private func getRightChildIndex(for parentIndex: Int) -> Int {
        return 2 * parentIndex + 2
    }
    
    private func getParentIndex(for childIndex: Int) -> Int {
        return (childIndex - 1)/2
    }
    
    private func leftChild(for parentIndex: Int) -> T? {
        let leftIndex = getLeftChildIndex(for: parentIndex)
        guard leftIndex < data.count else {return nil}
        return data[leftIndex]
    }
    
    private func rightChild(for parentIndex: Int) -> T? {
        let rightIndex = getRightChildIndex(for: parentIndex)
        guard rightIndex < data.count else {return nil}
        return data[rightIndex]
    }
    
    private func parent(for childIndex: Int) -> T {
        return data[getParentIndex(for: childIndex)]
    }
    
    private func bubbleUp(from index: Int) {
        if parent(for: index) > data[index] {
            let parentIndex = getParentIndex(for: index)
            data.swapAt(index, parentIndex)
            bubbleUp(from: parentIndex)
        }
    }
    
    private func bubbleDown(from index: Int) {
        if let leftChild = leftChild(for: index) {
            var switchIndex: Int!
            if let rightChild = rightChild(for: index) {
                switchIndex = leftChild < rightChild ? getLeftChildIndex(for: index) : getRightChildIndex(for: index)
            } else {
                switchIndex = getLeftChildIndex(for: index)
            }
            guard data[index] > data[switchIndex] else {return}
            data.swapAt(index, switchIndex)
            bubbleDown(from: switchIndex)
        }
    }
    
    //Fancy print function
    private func printLevel(_ level: Int, totalItemCount: Int, numberOfElements: Int){
      let startingIndex = totalItemCount
      let endIndex = startingIndex + numberOfElements
      for i in startingIndex..<endIndex{
        guard i <= data.count - 1 else { return }
        print(data[i], terminator: " ")
      }
      print("\n")
      printLevel(level+1, totalItemCount: totalItemCount + numberOfElements, numberOfElements: numberOfElements * 2)
    }
    
    public func add(heapValue: T) {
        self.data.append(heapValue)
        bubbleUp(from: data.count - 1)
    }
    
    public func poll() -> T? {
        guard !data.isEmpty else {return nil}
        let item = data.first
        data[0] = data.remove(at: data.count - 1)
        bubbleDown(from: 0)
        return item
    }
    
    public func peek() -> T? {
        return data.first
    }
    
    //Fancy print formatter function
    public func printFormattedHeap(){
      printLevel(1, totalItemCount: 0, numberOfElements: 1)
    }
    
} //End of class

let numbers = [2, 4, 5, 9, 13, 27, 12, 32]

let minHeap = MinHeap<Int>()

numbers.forEach({ minHeap.add(heapValue: $0) })
minHeap.peek()

minHeap.printFormattedHeap()
minHeap.poll()
print("")
minHeap.printFormattedHeap()

//========================================================================================

//MARK: - Tries

class TrieNode<T: Hashable> {
    
    var value: T?
    weak var parent: TrieNode?
    var children: [T : TrieNode] = [:]
    var isEndOfWord = false
    
    init(value: T?, parent: TrieNode?) {
        self.value = value
        self.parent = parent
    }
    
} //End of class

class Trie<CollectionType: Collection> where CollectionType.Element: Hashable {
    
    public typealias Node = TrieNode<CollectionType.Element>
    var rootNode = Node(value: nil, parent: nil)
    
    init() {}
    
    func addValue(value: CollectionType) {
        var currentNode = rootNode
        for element in value {
            if currentNode.children[element] == nil {
                currentNode.children[element] = TrieNode(value: element, parent: currentNode)
            }
            currentNode = currentNode.children[element]!
        }
        currentNode.isEndOfWord = true
    }
    
    func doesValueExist(value: CollectionType) -> Bool {
        if value.isEmpty {
            return true
        }
        var currentNode = rootNode
        for element in value {
            if currentNode.children[element] == nil {
                return false
            }
            currentNode = currentNode.children[element]!
        }
        return currentNode.isEndOfWord
    }
    
} //End of class

extension Trie where CollectionType: RangeReplaceableCollection {
    
    func collections(startingWith prefix: CollectionType) -> [CollectionType] {
        var currentNode = rootNode
        for element in prefix {
            if currentNode.children[element] == nil {
                return []
            }
            currentNode = currentNode.children[element]!
        }
        return collections(startingWith: prefix, after: currentNode)
    }
    
    func collections(startingWith prefix: CollectionType, after node: Node) -> [CollectionType] {
        var results: [CollectionType] = []
        
        if node.isEndOfWord {
            results.append(prefix)
        }
        
        for child in node.children.values {
            var prefix = prefix
            prefix.append(child.value!)
            results.append(contentsOf: collections(startingWith: prefix, after: child))
        }
        return results
    }
    
} //End of extension

var trie = Trie<String>()

trie.addValue(value: "car")
trie.addValue(value: "card")
trie.addValue(value: "care")
trie.addValue(value: "cared")
trie.addValue(value: "cars")
trie.addValue(value: "carbs")
trie.addValue(value: "carapace")
trie.addValue(value: "cargo")
trie.addValue(value: "cares")
trie.addValue(value: "caress")

print("\nCollections starting with \"car\"")
let prefixedWithCar = trie.collections(startingWith: "car")
print(prefixedWithCar)
print("\nCollections starting with \"care\"")
let prefixedWithCare = trie.collections(startingWith: "care")
print(prefixedWithCare)


/* NOTE :
 
 Heaps are tree-based data structures constrained by a heap property. Heaps are used in many famous algorithms such as Dijkstra’s algorithm for finding the shortest path, the heap sort sorting algorithm, implementing priority queues, and more. Essentially, heaps are the data structure you want to use when you want to be able to access the maximum or minimum element very quickly.
 
 Trie is an efficient information reTrieval data structure. Using Trie, search complexities can be brought to optimal limit (key length). If we store keys in binary search tree, a well balanced BST will need time proportional to M * log N, where M is maximum string length and N is number of keys in tree. Using Trie, we can search the key in O(M) time. However the penalty is on Trie storage requirements
 
 Hashable :
 A type that can be hashed into a Hasher to produce an integer hash value.
 
 Hashing: What and Why
 When we talk about hash, many terms have been frequently used in various settings, including hash, hashing, hasher, hash code, hash value, hash table, and hash function.
 Even if we are not familiar with all of these terms, we do use them a lot in various programming languages as well as our everyday life (e.g., password encryption), at least indirectly.
 
 Basic Hashable concepts :
 Generally speaking, hashing is the process of applying an algorithm to convert a data item to a value. The data item can be as simple as an integer, a string, or as complex as an object with multiple properties
 
 In Swift, conforming to the Hashable protocol is often just as easy as adding Hashable to your conformance list. However, if you have custom requirements, or use properties that don’t all conform to Hashable, it takes a little more work.

 https://brilliant.org/wiki/heaps/
 https://www.geeksforgeeks.org/trie-insert-and-search/
 https://www.hackingwithswift.com/example-code/language/how-to-conform-to-the-hashable-protocol
 https://developer.apple.com/documentation/swift/hashable
 https://betterprogramming.pub/what-is-hashable-in-swift-6a51627f904
 
 */
