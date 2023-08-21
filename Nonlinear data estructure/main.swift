import Foundation

var statusMenu = true

while statusMenu == true {
    print("\nESTRUCTURA DE DATOS NO LINEALES\n")
    print("Digite para ver el código de: \n1. Realizar CRUD en un diccionario o mapa. \n2. Agregar y mostrar nodos de una tabla hash de forma manual. \n\nDigite * para salir del programa.")
    if let menu = Int(readLine()!) {
        switch menu {
            case 1:
                //NONLINEAR DATA STRUCTURE
                //Dictionary, maps, hash tables URL: https://www.youtube.com/watch?v=5HjgrR_22ZE&t=306s and https://www.youtube.com/watch?v=9tZsDJ3JBUA
                /*Example
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
                var status = true
            
                while status == true {
                    print("\nCRUD EN UN DICCIONARIO O MAPA.\n")
                    print("Digite para ver el código de: \n1. Agregar elementos. \n2. Mostrar todos los elementos. \n3. Actualizar algún elemento. \n4. Eliminar elementos.")
                    if let menu = Int(readLine()!) {
                        switch menu {
                            case 1:
                                print("\nAGREGAR ELEMENTOS A UNA DICCIONARIO O MAPA.\n")
                                print("1    var dictionary: [String: Any] = [ \n2        \"idCard\": 10234951034, \n3        \"name\": \"david alejandro\", \n4        \"lastName\": \"guerrero amador\", \n5        \"age\": 23 \n6    ] \n7    \n8    //Agregar elementos al diccionario (llave: valor). \n9    dictionary[\"city\"] = \"tunja\" \n10   dictionary.updateValue(\"male\", forKey: \"gener\")")
                                status = false
                            break
                            
                            case 2:
                                print("\nMOSTRAR TODOS LOS ELEMENTOS DE UN DICCIONARIO O MAPA.\n")
                                print("1    var dictionary: [String: Any] = [ \n2        \"idCard\": 10234951034, \n3        \"name\": \"david alejandro\", \n4        \"lastName\": \"guerrero amador\", \n5        \"age\": 23 \n6    ] \n7    \n8    //Mostrar todos los elementos del diccionario. \n9    for (key, value) in dictionary { \n10       print(\"\\(key) -> \\(value)\") \n11   }")
                                status = false
                            break
                                
                            case 3:
                                print("\nACTUALIZAR ALGÚN ELEMENTO DE UN DICCIONARIO O MAPA.\n")
                                print("1    var dictionary: [String: Any] = [ \n2        \"idCard\": 10234951034, \n3        \"name\": \"david alejandro\", \n4        \"lastName\": \"guerrero amador\", \n5        \"age\": 23 \n6    ] \n7    \n8    //Actualizar algunos elementos del diccionario. \n9    dictionary[\"age\"] = 24")
                                status = false
                            break
                                
                            case 4:
                                print("\nELIMINAR ELEMENTOS DE UN DICCIONARIO O MAPA.\n")
                                print("1    var dictionary: [String: Any] = [ \n2        \"idCard\": 10234951034, \n3        \"name\": \"david alejandro\", \n4        \"lastName\": \"guerrero amador\", \n5        \"age\": 23 \n6    ] \n7    \n8    //Eliminar elementos del diccionario. \n9    dictionary.removeValue(forKey: \"lastName\")")
                                status = false
                            break
                            
                            default:
                                print("\n‼️La opción no se encuentra en el menu dado.‼️\n")
                        }
                    } else {
                        print("\n‼️Solo se pueden digitar números.‼️\n")
                    }
                }
            break
            
            case 2:
                //Hash tables URL:
                /* Example
                class Node <Key: CustomStringConvertible, Value> where Key: Equatable {
                    var key: Key
                    var value: Value
                    var next: Node? = nil
                    var prev: Node? = nil
                        
                    init (key: Key, value: Value) {
                        self.key = key
                        self.value = value
                    }
                }

                //Create the hash table
                class HashTable <Key: CustomStringConvertible, Value> where Key: Equatable {
                    //Structure for each item or slot in the bucket
                    var buckets: [Node<Key, Value>?]
                    
                    init(size: Int) {
                        //Create an array of slots (buckets)
                        buckets = Array(repeating: nil, count: size)
                    }
                    
                    //Calculate the index or hash for a key
                    func calcIndex (key: Key) -> (Int) {
                        var subindex = 0, iterator = 1, index = 0
                            
                        //Calculate the ASCII code for each character
                        let key = String(key.description)
                        for character in key {
                            subindex += Int(character.unicodeScalars.first!.value) * iterator
                            iterator += 1
                        }
                            
                        index = subindex % buckets.count
                        return index
                    }
                    
                    //Add item to hash table
                    func addElem (key: Key, value: Value) {
                        let index = calcIndex(key: key)
                        let newNode = Node(key: key, value: value)
                        
                        //Check if array in a determined position is empty
                        if (buckets[index] == nil) {
                            buckets[index] = newNode
                        } else { //Look up the key in a determined position in the array or bucket
                            var currentNode = buckets[index]
                            
                            while (currentNode?.next != nil) {
                                currentNode = currentNode?.next
                            }
                            
                            currentNode?.next = newNode
                            newNode.prev = currentNode
                        }
                    }
                    
                    //Get item via key in hash table
                    func getElem (key: Key) -> Value? {
                        let index = calcIndex(key: key)
                        var currentNode = buckets[index]
                        
                        while (currentNode != nil) {
                            if (currentNode?.key == key) {
                                return currentNode!.value
                            }
                            currentNode = currentNode?.next
                        }
                        return nil
                    }
                }
                  
                var hashTable = HashTable <String, Int> (size: 13)
                print(hashTable.getElem(key: "Hola"))
                print(hashTable.addElem(key: "Hola", value: 10))
                print(hashTable.getElem(key: "Hola"))
                */
            
                print("\nAGREGAR Y MOSTRAR NODOS DE UNA TABLA HASH DE FORMA MANUAL.\n")
                print("1    //Crear nodo. \n2    class Node <Key: CustomStringConvertible, Value> where Key: Equatable { \n3        var key: Key \n4        var value: Value \n5        var next: Node? = nil \n6        var prev: Node? = nil \n7  \n8        init (key: Key, value: Value) { \n9            self.key = key \n10            self.value = value \n11       } \n12   } \n13   \n14   //Crear la tabla hash. \n15   class HashTable <Key: CustomStringConvertible, Value> where Key: Equatable { \n16       //Estructura para cada elemento o slot en el bucket. \n17       var buckets: [Node<Key, Value>?] \n18   \n19       init(size: Int) { \n20           //Crear un arreglo de slots (buckets). \n21           buckets = Array(repeating: nil, count: size) \n22       } \n23   \n24       //Calcular el indice o hash para una llave. \n25       func calcIndex (key: Key) -> (Int) { \n26       var subindex = 0, iterator = 1, index = 0 \n27   \n28       //Calcular el código ASCII para cada caracter. \n29       let key = String(key.description) \n30       for character in key { \n31           subindex += Int(character.unicodeScalars.first!.value) * iterator \n32           iterator += 1 \n33       } \n34       index = subindex % buckets.count \n35       return index \n36       } \n37   \n38       //Agregar elementos a la tabla hash. \n39       func addElem (key: Key, value: Value) { \n40           let index = calcIndex(key: key) \n41           let newNode = Node(key: key, value: value) \n42   \n43           //Verificar si el arreglo in una determinada posición es vacio. \n44           if (buckets[index] == nil) { \n45               buckets[index] = newNode \n46           } else { //Buscar la llave en una determinada posición en el arreglo o bucket. \n47               var currentNode = buckets[index] \n48   \n49               while (currentNode?.next != nil) { \n50                   currentNode = currentNode?.next \n51               } \n52               currentNode?.next = newNode \n53               newNode.prev = currentNode \n54           } \n55       } \n56   \n57       //Obtener el elemento a través de la llave en la tabla hash. \n58       func getElem (key: Key) -> Value? { \n59           let index = calcIndex(key: key) \n60           var currentNode = buckets[index] \n61   \n62           while (currentNode != nil) { \n63               if (currentNode?.key == key) { \n64                   return currentNode!.value \n65               } \n66               currentNode = currentNode?.next \n67           } \n68           return nil \n69       } \n70   } \n71   \n72   //Crear la tabla hash. \n73   var hashTable = HashTable <String, Int> (size: 13) \n74   \n75   //Agregar un elemento o nodo. \n76   print(hashTable.addElem(key: \"Hola\", value: 10)) \n77   \n78   //Mostrar el valor de un nodo por medio de su llave. \n79   print(hashTable.getElem(key: \"Hola\"))")
            break
            
            case 3:
                print("Adios 👋.")
                statusMenu = false
            break
            
            default:
                print("\n‼️Solo se pueden digitar números.‼️\n")
        }
    } else {
        print("\n‼️Solo se pueden digitar números.‼️\n")
    }
}



