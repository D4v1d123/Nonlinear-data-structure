import Foundation

//NONLINEAR DATA STRUCTURE
//Dictionary, maps, hash tables or objects URL: https://www.youtube.com/watch?v=5HjgrR_22ZE&t=306s and https://www.youtube.com/watch?v=9tZsDJ3JBUA
/*
var dictionary: [String: Any] = [
    "idCard": 10234951034,
    "name": "david alejandro",
    "lastName": "guerrero amador",
    "age": 23
    
]

//Add items to the dictionary (Key: Value)
dictionary["city"] = "tunja"
dictionary.updateValue("male", forKey: "gener")

//Delete dictionary items
dictionary.removeValue(forKey: "lastName")

//Update some item of the dictitionary
dictionary["age"] = 24

//Show all dictionary items
for (key, value) in dictionary {
    print("\(key) -> \(value)")
    
}
*/

//Hash tables URL:
/*
class LinkedList {
    var head: Node? = nil
    var tail: Node? = nil
    
    class Node {
        var key: Int
        var data: Any
        var next: Node? = nil
        var prev: Node? = nil
        
        init (key: Int, data: Int) {
            self.key = key
            self.data = data
            
        }
    }
    
    
    func addElemEnd (newNode: Node) {
        if (head == nil) {
            head = newNode
            tail = newNode
            return
            
        }
        
        var node = head
        //Update data when
        if (node?.key == newNode.key) {
            node?.data = newNode.data
            return
            
        }
        
        while (node?.next != nil) {
            //Update data
            if (node?.key == newNode.key) {
                node?.data = newNode.data
                return
                
            }
            
            node = node?.next
        }
        
        //Insert node at end of linked list
        tail?.next = newNode
        tail?.prev = tail
        tail = tail?.next
        return
        
    }
    
    func show () {
        var node = head
        
        while (node?.next != nil) {
            print(node?.data)
            node = node?.next
            
        }
    
        print(tail?.data)
    }
}


//Calculate the index or hash for a key
func calcIndex (key: String, list: [Any]) -> (Int, Int) {
    var subindex = 0, iterator = 1, index = 0
    
    //Calculate the ASCII code for each character
    for character in key {
        subindex += Int(character.unicodeScalars.first!.value) * iterator
        iterator += 1
        
    }
    
    index = subindex % list.count
    
    return (index, subindex)
    
}

//Insert the values inside of the list
func insertValueInList (index: Int, subIndex: Int, value: Int, list: inout [Any], linkedList: inout LinkedList) {
    let node = LinkedList.Node(key: subIndex, data: value)
    
    linkedList.addElemEnd(newNode: node)
    
    //Buckets or Slots exist within this index (Status: 1)
    list[index] = 1
        
}
 

//It is recommended that the list has a lenght of a prime number
var contactsLinkedList = LinkedList()
var contacts: [Any] = Array(repeating: 0, count: 13)
var indexTuple = calcIndex(key: "David", list: contacts)


var index = indexTuple.0
var subIndex = indexTuple.1
insertValueInList(index: 2, subIndex: 23, value: 3153459186, list: &contacts, linkedList: &contactsLinkedList)

indexTuple = calcIndex(key: "Divad", list: contacts)
index = indexTuple.0
subIndex = indexTuple.1

insertValueInList(index: 2, subIndex: 25, value: 3203459186, list: &contacts, linkedList: &contactsLinkedList)



insertValueInList(index: 2, subIndex: 28, value: 3253459186, list: &contacts, linkedList: &contactsLinkedList)

insertValueInList(index: 2, subIndex: 29, value: 3303459186, list: &contacts, linkedList: &contactsLinkedList)

contactsLinkedList.show()
print(contacts)

var contactLinkedList = LinkedList()


insertValueInList(index: 3, subIndex: 25, value: 3203459186, list: &contacts, linkedList: &contactLinkedList)

insertValueInList(index: 3, subIndex: 28, value: 3253459186, list: &contacts, linkedList: &contactLinkedList)

insertValueInList(index: 3, subIndex: 29, value: 3303459186, list: &contacts, linkedList: &contactLinkedList)

contactLinkedList.show()
print(contacts)

//print(contacts)
//insertValueInList(index: index, subIndex: subIndex, value: 3253459186, list: &contacts)
//insertValueInList(index: index, value: 3203456789, list: &contacts)
*/

