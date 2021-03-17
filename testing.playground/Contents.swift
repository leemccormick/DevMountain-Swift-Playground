//Binary Search Tree vs Binary Tree
//  - The value of the left child must be less than the value of its parent
//  - Value of the right child must be greater than or equal to the value of its parent
//Important for efficiency. An array takes linear looup time (check every element), BST takes n logn as you ignore half each time 

print("Welcome to Chili's")

var wompingWillow: BinarySearchTree<Int> = {
    
    var bst = BinarySearchTree<Int>()
    bst.insert(3)
    bst.insert(1)
    bst.insert(4)
    bst.insert(0)
    bst.insert(2)
    bst.insert(5)
    return bst
}()

example(of: "wompingWillow Build") {
    print(wompingWillow)
}

example(of: "look up / find") {
    if wompingWillow.contains(6) {
        print("contains 6")
    } else {
        print("does not contain 6")
    }
}

example(of: "removal") {
    var tree = wompingWillow
    print("WW before removal:")
    print(tree)
    tree.remove(4)
    print("WW after removal:")
    print(tree)
    print("WW Test")
    tree.insert(4)
    print(tree)
}
