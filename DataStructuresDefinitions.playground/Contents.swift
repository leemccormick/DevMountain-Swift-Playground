import UIKit

/*
 
 DATA STRUCTURES:
 
 Array:
 - Collection of values stored as a single value
 - Can have duplicates
 - Can be empty
 - Can be structured as an array within an array (2D Array)
 - Can be sorted, looped through, filtered, etc
 - Generic collection (can work with any type) ((once assigned a type, can only take that type)
 - Sequence (can be iterated through), Collection (can be iterated multiple times and accessed with subscript), RandomAccessCollection (element retrieval is handled in constant time)
 - .append() is constant time
 - insert at 0 (or anywhere else in the array), requires a re-indexing of all the following elements
 - Arrays have set memory capacities (containers), each jump in memory is expensive. Each element needs to be copied, two places in memory being used at the same time
 
 Dictionary:
 - A generic collection that contains key-value pairs (can take any type, then assumes that type)
 - Can have duplicate (multiple) values but not keys
 - Not ordered (cannot insert at an index)
 - Insert at a constant time
 - Look up (find) operations are constant time (different than retrieval)
 
 Set:
 - Container with unique values (cannot contain duplicate values)
 - non-ordered (not "random")
 - Adding a duplicate won't give you an error, but it will not be added
 
 Tuple:
 - Store several values together in a single value
 - Cannot add or remove from a tuple, once created. They are fixed in size
 - Can change values, but not types
 - Can be accessed by numerical positions or by name
    name.0 // name.first
 
 
 //MARK: - Linked List Stuff
 
 - When you think LL think "nodes"
    - hold a value, hold a reference
 
 - Head (first), tail (last)
 - Linear and unidirectional
 - Linked List:  1 -> 2 -> 3 -> 4 -> 5
 - Constant time for insertion and removal from the list
 - LL == O(1) front insertion, Array O(n) front insertion
 
 Methods for adding to a linked list:
    - Push: add to the front of the list (head first insertion)
    - Append: add to the end of the list (tail end insertion)
    - Insert: add after a certain node in list
 
 Methods for removing from a linked list:
    - Pop: remove a value at the front of the list
    - Remove last: self explanatory (searching for a tail that's nil)
    - Remove after: find a specific node and rmeove node that comes after
 
 */

