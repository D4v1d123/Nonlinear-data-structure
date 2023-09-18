import Foundation

var statusMenu = true

while statusMenu == true {
    print("\nESTRUCTURA DE DATOS NO LINEALES.\n")
    print("Digite para ver el código de: \n1. Realizar CRUD en un diccionario o mapa. \n2. Agregar y mostrar nodos de una tabla hash de forma manual. \n3. Crear, actualizar y mostrar las propiedades de un objeto mediante estructuras. \n4. Realizar CRUD en un objeto a partir de un diccionario. \n5. Realizar CRUD en una matriz. \n6. Realizar un CRUD en un árbol binario de búsqueda. \n\nDigite 7 para salir del programa.")
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
                //Objects URL: https://www.youtube.com/watch?v=5DaZXXbHI_U
                /* Example
                //OBJECTS THROUGH STRUCTURES
                //Object template
                struct Person {
                    var name: String
                    var lastName: String
                    var age: Int
                    var height: Float
                    var study: StudyInfo
                }

                struct StudyInfo {
                    var school: String
                    var university: String
                }

                //Create 'pepito' object
                var pepito = Person(
                    name: "Pepito",
                    lastName: "Pérez",
                    age: 20,
                    height: 1.60,
                    study: StudyInfo(
                        school: "I.E. María Silva",
                        university: "Harvard"
                    )
                )

                //Update the value of a property
                pepito.study.university = "San Romero"

                //Create a copy of the 'pepito' object for extract the property and values information
                let showPepito = Mirror(reflecting: pepito)

                //Show attributes of the 'showPepito' object
                for (key, value) in showPepito.children {
                    print("\(key!): \(value)")
                }
                */
                
                var status = true
                
                while status == true {
                    print("\nCREAR, ACTUALIZAR Y MOSTRAR LAS PROPIEDADES DE UN OBJETO MEDIANTE ESTRUCTURAS.\n")
                    print("Digite para ver el código de: \n1. Crear un objeto a través de estructuras. \n2. Actualizar las propiedades de un objeto. \n3. Mostrar las propiedades de un objeto.")
                    if let menu = Int(readLine()!) {
                        switch menu {
                            case 1:
                                print("\nCREAR UN OBJETO A TRAVÉS DE ESTRUCTURAS.\n")
                                print("1    //Plantilla o estructura. \n2    struct Person { \n3        var name: String \n4        var lastName: String \n5        var age: Int \n6        var height: Float \n7        var study: StudyInfo \n8    } \n9    \n10    struct StudyInfo { \n11       var school: String \n12       var university: String \n13   } \n14   \n15   //Crear o instanciar un objeto 'pepito' por medio de la estructura 'Person' y 'StudyInfo'. \n16   var pepito = Person( \n17       name: \"Pepito\", \n18       lastName: \"Pérez\", \n19       age: 20, \n20       height: 1.60, \n21       study: StudyInfo( \n22           school: \"I.E. María Silva\", \n23           university: \"Harvard\" \n24       ) \n25   )")
                                status = false
                                break
                             
                            case 2:
                                print("\nACTUALIZAR LAS PROPIEDADES DE UN OBJETO.\n")
                                print("1    //Plantilla o estructura. \n2    struct Person { \n3        var name: String \n4        var lastName: String \n5        var age: Int \n6        var height: Float \n7        var study: StudyInfo \n8    } \n9    \n10    struct StudyInfo { \n11       var school: String \n12       var university: String \n13   } \n14   \n15   //Crear o instanciar un objeto 'pepito' por medio de la estructura 'Person' y 'StudyInfo'. \n16   var pepito = Person( \n17       name: \"Pepito\", \n18       lastName: \"Pérez\", \n19       age: 20, \n20       height: 1.60, \n21       study: StudyInfo( \n22           school: \"I.E. María Silva\", \n23           university: \"Harvard\" \n24       ) \n25   ) \n26   \n27   //Actualizar los valores de una propiedad. \n28   pepito.study.university = \"San Romero\"")
                                status = false
                                break
                                
                            case 3:
                                print("\nMOSTRAR LAS PROPIEDADES DE UN OBJETO.\n")
                                print("1    //Plantilla o estructura. \n2    struct Person { \n3        var name: String \n4        var lastName: String \n5        var age: Int \n6        var height: Float \n7        var study: StudyInfo \n8    } \n9    \n10    struct StudyInfo { \n11       var school: String \n12       var university: String \n13   } \n14   \n15   //Crear o instanciar un objeto 'pepito' por medio de la estructura 'Person' y 'StudyInfo'. \n16   var pepito = Person( \n17       name: \"Pepito\", \n18       lastName: \"Pérez\", \n19       age: 20, \n20       height: 1.60, \n21       study: StudyInfo( \n22           school: \"I.E. María Silva\", \n23           university: \"Harvard\" \n24       ) \n25   ) \n26   \n27   //Crear una copia del objeto 'pepito' para extraer la información de sus propiedades y valores. \n28   let showPepito = Mirror(reflecting: pepito) \n29   \n30   //Show attributes of the 'showPepito' object \n31   for (key, value) in showPepito.children { \n32       print(\"\\(key!): \\(value)\") \n33   }")
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
            
            case 4:
                //OBJECTS THROUGHT DICTIONARIES
                /* Example
                var pepito: [String: Any] = [
                    "name": "Pepito",
                    "lastName": "Pérez",
                    "age": 20,
                    "height": 1.60,
                    "study": [
                        "school": "I.E. María Silva",
                        "university": "Harvard"
                    ]
                ]

                //Add items
                pepito["work"] = "iOS developer"

                //Show all the keys and values of the 'pepito' dictionary
                for (key, value) in pepito {
                    print("\(key): \(value)")
                }

                //Update the value of the a property
                var studyInfoPepito = pepito["study"] as? [String: Any]
                studyInfoPepito!["university"] = "Unisangil"
                pepito["study"] = studyInfoPepito

                //Delete an attribute
                pepito.removeValue(forKey: "height")
                */
                var status = true
                    
                while status == true {
                    print("\nREALIZAR CRUD EN UN OBJETO A PARTIR DE UN DICCIONARIO.\n")
                    print("Digite para ver el código de: \n1. Agregar propiedades a un objeto. \n2. Mostrar todas las propiedades de un objeto. \n3. Actualizar propiedades a un objeto. \n4. Eliminar propiedades de un objeto.")
                    if let menu = Int(readLine()!) {
                        switch menu {
                            case 1:
                                print("\nNAGREGAR PROPIEDADES A UN OBJETO MEDIANTE UN DICCIONARIO.\n")
                                print("1    //Crear el objeto 'pepito' a través de un diccionario o tabla hash. \n2    var pepito: [String: Any] = [ \n3        \"name\": \"Pepito\", \n4        \"lastName\": \"Pérez\", \n5        \"age\": 20, \n6        \"height\": 1.60, \n7        \"study\": [ \n8            \"school\": \"I.E. María Silva\", \n9            \"university\": \"Harvard\" \n10       ] \n11   ] \n12   \n13   //Agregar propiedad. \n14   pepito[\"work\"] = \"iOS developer\"")
                                status = false
                                break
                                
                            case 2:
                                print("\nMOSTRAR TODAS LAS PROPIEDADES DE UN OBJETO.\n")
                                print("1    //Crear el objeto 'pepito' a través de un diccionario o tabla hash. \n2    var pepito: [String: Any] = [ \n3        \"name\": \"Pepito\", \n4        \"lastName\": \"Pérez\", \n5        \"age\": 20, \n6        \"height\": 1.60, \n7        \"study\": [ \n8            \"school\": \"I.E. María Silva\", \n9            \"university\": \"Harvard\" \n10       ] \n11   ] \n12   \n13   //Mostrar todas las llaves y valores del diccionario 'pepito'. \n14   for (key, value) in pepito { \n15       print(\"\\(key): \\(value)\") \n16   }")
                                status = false
                                break
                                
                            case 3:
                                print("\nACTUALIZAR PROPIEDADES A UN OBJETO.\n")
                                print("1    //Crear el objeto 'pepito' a través de un diccionario o tabla hash. \n2    var pepito: [String: Any] = [ \n3        \"name\": \"Pepito\", \n4        \"lastName\": \"Pérez\", \n5        \"age\": 20, \n6        \"height\": 1.60, \n7        \"study\": [ \n8            \"school\": \"I.E. María Silva\", \n9            \"university\": \"Harvard\" \n10       ] \n11   ] \n12   \n13   //Actualizar el valor de una propiedad. \n14   var studyInfoPepito = pepito[\"study\"] as? [String: Any] \n15   studyInfoPepito![\"university\"] = \"Unisangil\" \n16   pepito[\"study\"] = studyInfoPepito")
                                status = false
                                break
                                
                            case 4:
                                print("\nELIMINAR PROPIEDADES DE UN OBJETO.\n")
                                print("1    //Crear el objeto 'pepito' a través de un diccionario o tabla hash. \n2    var pepito: [String: Any] = [ \n3        \"name\": \"Pepito\", \n4        \"lastName\": \"Pérez\", \n5        \"age\": 20, \n6        \"height\": 1.60, \n7        \"study\": [ \n8            \"school\": \"I.E. María Silva\", \n9            \"university\": \"Harvard\" \n10       ] \n11   ] \n12   \n13   //Eliminar una propiedad. \n14   pepito.removeValue(forKey: \"height\")")
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
            
            case 5:
                //Matrix URL: https://www.youtube.com/watch?v=OyNXw80YgXc&t=2s
                /* Example
                //Create a matrix by statement
                var matrixStatement = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]

                //Show all items
                print("Los elementos dentro del vector son:")
                for rows in matrixStatement {
                    for itemColumn in rows {
                        print(itemColumn, terminator: ", ")
                    }
                    print("")
                }


                //Create a matrix by indexing
                var matrixIndexing:[[Int]] = []
                var rowsSize = 3
                var columnSize = 3

                //Insert items
                for row in 0..<rowsSize {
                    matrixIndexing.append([])
                        
                    for _ in 0..<columnSize {
                        //Insert a random number between 0 and 10
                        matrixIndexing[row].append(Int.random(in: 0...10))
                    }
                }

                //Show all items
                print("\nLos elementos dentro del vector son:")
                for rows in matrixIndexing {
                    for itemColumn in rows {
                        print(itemColumn, terminator: ", ")
                    }
                    print("")
                }

                //Update items
                print("\nDigite el lugar donde está el dato a modificar:")
                print("\nDigite la fila:")
                if let row = Int(readLine()!) {
                    print("\nDigite la columna:")
                    if let column = Int(readLine()!) {
                        print("\nDigite el número por el que quiere actualizar el dato:")
                        if let number = Int(readLine()!) {
                            matrixIndexing[row - 1][column - 1] = number
                        } else {
                            print("‼️Solo se pueden digitar números.‼️")
                        }
                    } else {
                        print("‼️Solo se pueden digitar números.‼️")
                    }
                } else {
                    print("‼️Solo se pueden digitar números.‼️")
                }

                //Delete items
                print("\nDigite el lugar donde está el dato a eliminar:")
                print("\nDigite la fila:")
                if let row = Int(readLine()!) {
                    print("\nDigite la columna:")
                    if let column = Int(readLine()!) {
                        matrixIndexing[row - 1].remove(at: column - 1)
                    } else {
                        print("‼️Solo se pueden digitar números.‼️")
                    }
                } else {
                    print("‼️Solo se pueden digitar números.‼️")
                }
                */
                var status = true
                
                while status == true {
                    print("\nREALIZAR CRUD EN UNA MATRIZ.\n")
                    print("Digite para ver el código de: \n1. Crear una matriz por declaración. \n2. Crear una matriz por indexación. \n3. Mostrar el contenido de una matriz. \n4. Actualizar un elemento. \n5. Eliminar un elemento.")
                    if let menu = Int(readLine()!) {
                        switch menu {
                        case 1:
                            print("\nCREAR UNA MATRIZ POR DECLARACIÓN.\n")
                            print("1    //Crear una matriz por declaración. \n2    var matrixStatement = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]")
                            status = false
                            break
                        
                        case 2:
                            print("\nCREAR UNA MATRIZ POR INDEXACIÓN.\n")
                            print("1    //Crear una matriz por indexación. \n2    var matrixIndexing:[[Int]] = [] \n3    var rowsSize = 3 \n4    var columnSize = 3")
                            status = false
                            break
                            
                        case 3:
                            print("\nMOSTRAR EL CONTENIDO DE UNA MATRIZ.\n")
                            print("1    //Crear una matriz por declaración. \n2    var matrixStatement = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] \n3    \n4    print(\"Los elementos dentro del vector son:\") \n5    for rows in matrixStatement { \n6        for itemColumn in rows { \n7            print(itemColumn, terminator: \", \") \n8        } \n9        print(\"\") \n10   }")
                            status = false
                            break
                            
                        case 4:
                            print("\nACTUALIZAR UN ELEMENTO DE UNA MATRIZ.\n")
                            print("1    //Crear una matriz por declaración. \n2    var matrixStatement = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] \n3    \n4    //Actualizar un elemento.  \n5    print(\"\\nDigite el lugar donde está el dato a modificar:\") { \n6    print(\"\\nDigite la fila:\") \n7    if let row = Int(readLine()!) { \n8        print(\"\\nDigite la columna:\") \n9        if let column = Int(readLine()!) { \n10           print(\"\\nDigite el número por el que quiere actualizar el dato:\") \n11           if let number = Int(readLine()!) { \n12               matrixStatement[row - 1][column - 1] = number \n13           } else { \n14               print(\"‼️Solo se pueden digitar números.‼️\") \n15           } \n16       } else { \n17           print(\"‼️Solo se pueden digitar números.‼️\") \n18       } \n19   } else { \n20       print(\"‼️Solo se pueden digitar números.‼️\") \n21   }")
                            status = false
                            break
                            
                        case 5:
                            print("\nELIMINAR UN ELEMENTO DE UNA MATRIZ.\n")
                            print("1    //Crear una matriz por declaración. \n2    var matrixStatement = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] \n3    \n4    //Eliminar un elemento.  \n5    print(\"\\nDigite el lugar donde está el dato a eliminar:\") { \n6    print(\"\\nDigite la fila:\") \n7    if let row = Int(readLine()!) { \n8        print(\"\\nDigite la columna:\") \n9        if let column = Int(readLine()!) { \n10           matrixStatement[row - 1].remove(at: column - 1) \n11       } else { \n12           print(\"‼️Solo se pueden digitar números.‼️\") \n13       } \n14   } else { \n15       print(\"‼️Solo se pueden digitar números.‼️\") \n16   }")
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
            
            case 6:
                // Binary search tree URL: https://www.youtube.com/watch?v=k2kx7hupEy4&t=190s, https://www.youtube.com/watch?v=HZXiKGlJ6Bw&t=25s, https://www.youtube.com/watch?v=Ruc7maS2-SM&t=109s, https://www.youtube.com/watch?v=YQAWruF0iwQ&t=184s, https://www.youtube.com/watch?v=eZfXKHrMyo8&t=210s, https://www.youtube.com/watch?v=A70r8Xh9StU, https://www.youtube.com/watch?v=omNr8fVp4r0, https://www.youtube.com/watch?v=qe0jb9YZtXY, https://www.youtube.com/watch?v=W0FYXBSSVVo&t=8s, https://www.youtube.com/watch?v=sQoRMJEV49o&t=2s, https://www.youtube.com/watch?v=u9c-4qlvt24, https://www.youtube.com/watch?v=Kchi5guHGx0&t=437s, https://www.youtube.com/watch?v=Lsi8NszksFk
                /* Example
                //Creating a new node
                class Node {
                    var data: Int
                    var left: Node?
                    var right: Node?
                    var father: Node?
                    
                    init(data: Int, father: Node?) {
                        self.data = data
                        self.left = nil
                        self.right = nil
                        self.father = father
                    }
                }

                class BinarySearchTree {
                    var binaryTree: Node?
                    
                    //Insert node
                    func insert (data: Int) {
                        func insertRecursive (node: Node?, data: Int, father: Node?) -> Node {
                            if node == nil {
                                return Node(data: data, father: father)
                            }
                            
                            if data < node!.data {
                                //Insert node to the left side
                                node?.left = insertRecursive(node: node?.left, data: data, father: node)
                            } else {
                                //Insert node to the right side
                                node?.right = insertRecursive(node: node?.right, data: data, father: node)
                            }
                            
                            return node!
                        }
                        
                        binaryTree = insertRecursive(node: binaryTree, data: data, father: nil)
                    }
                    
                    //Show all nodes of a tree
                    func showTree () {
                        print("")
                        func showTreeRecursive (node: Node?, counter: Int) {
                            if node == nil {
                                return
                            }
                            
                            showTreeRecursive(node: node?.right, counter: counter + 1)
                            for _ in 0 ..< counter {
                                print("   ", terminator: "")
                            }
                            print(node!.data)
                            showTreeRecursive(node: node?.left, counter: counter + 1)
                        }
                        
                        showTreeRecursive(node: binaryTree, counter: 0)
                    }
                    
                    //Search a node in a binary tree
                    func search (data: Int) -> Bool {
                        func searchRecursive (node: Node?, data: Int) -> Bool {
                            if node == nil {
                                return false
                            }
                            
                            if data == node!.data {
                                return true
                            } else if data < node!.data {
                                return searchRecursive(node: node?.left, data: data)
                            } else {
                                return searchRecursive(node: node?.right, data: data)
                            }
                        }
                        
                        //Return the search value
                        return searchRecursive(node: binaryTree, data: data)
                    }
                  
                    //Traverse a tree in PreOrder
                    func preOrder () {
                        func preOrderRecursive (node: Node?) {
                            if node == nil {
                                return
                            }
                            
                            print("\(node!.data) - ", terminator: "")
                            preOrderRecursive(node: node?.left)
                            preOrderRecursive(node: node?.right)
                        }
                        
                        preOrderRecursive(node: binaryTree)
                    }
                    
                    //Traverse a tree in InOrder
                    func inOrder () {
                        func inOrderRecursive (node: Node?) {
                            if node == nil {
                                return
                            }
                            
                            inOrderRecursive(node: node?.left)
                            print("\(node!.data) - ", terminator: "")
                            inOrderRecursive(node: node?.right)
                        }
                        
                        inOrderRecursive(node: binaryTree)
                    }
                    
                    //Traverse a tree in PostOrder
                    func postOrder () {
                        func postOrderRecursive (node: Node?) {
                            if node == nil {
                                return
                            }
                            
                            postOrderRecursive(node: node?.left)
                            postOrderRecursive(node: node?.right)
                            print("\(node!.data) - ", terminator: " ")
                        }
                        
                        postOrderRecursive(node: binaryTree)
                    }
                    
                    //Delete a node
                    func deleteNode (data: Int) {
                        //Determine the leftmost possible node
                        func minimumNode (node: Node?) -> Node? {
                            if node == nil {
                                return nil
                            }
                            
                            if node?.left != nil {
                                return minimumNode(node: node?.left)
                            } else {
                                return node
                            }
                        }
                        
                        //Replace two nodes
                        func replaceNode (node: Node?, newNode: Node?) {
                            if node?.father != nil {
                                //Node 'father' is assigned it's new node 'children'
                                if node?.data == node?.father?.left?.data {
                                    node?.father?.left = newNode
                                } else if node?.data == node?.father?.right?.data {
                                    node?.father?.right = newNode
                                }
                            }
                            
                            if newNode?.data != nil {
                                //To new node is assigned it's new father
                                newNode?.father = node?.father
                            }
                        }
                        
                        func destroyNode (node: Node) {
                            node.left = nil
                            node.right = nil
                        }
                        
                        func deleteFoundNode (nodeToDelete: Node) {
                            //Delete a node that has two children
                            if nodeToDelete.left != nil && nodeToDelete.right != nil {
                                //Smallest possible node
                                let minorNode:Node = minimumNode(node: nodeToDelete.right)!
                                nodeToDelete.data = minorNode.data
                                
                                deleteFoundNode(nodeToDelete: minorNode)
                            } else if nodeToDelete.left != nil { //Check if the node has a node 'children' on to left
                                replaceNode(node: nodeToDelete, newNode: nodeToDelete.left)
                                destroyNode(node: nodeToDelete)
                            } else if nodeToDelete.right != nil { //Check if the node has a node 'children' on to right
                                replaceNode(node: nodeToDelete, newNode: nodeToDelete.right)
                                destroyNode(node: nodeToDelete)
                            } else { //The node hasn't nodes 'children'
                                replaceNode(node: nodeToDelete, newNode: nil)
                                destroyNode(node: nodeToDelete)
                            }
                        }
                        
                        func deleteNodeRecursive (node: Node?, data: Int ) {
                            if node == nil {
                                return
                            }
                            
                            if node!.data < data {
                                deleteNodeRecursive(node: node?.right, data: data)
                            } else if node!.data > data {
                                deleteNodeRecursive(node: node?.left, data: data)
                            } else {
                               deleteFoundNode(nodeToDelete: node! )
                            }
                        }
                        
                        deleteNodeRecursive(node: binaryTree, data: data)
                    }
                }

                /* Test
                let tree = BinarySearchTree()
                tree.insert(data: 10)
                tree.insert(data: 5)
                tree.insert(data: 15)
                tree.insert(data: 3)
                tree.insert(data: 20)
                tree.insert(data: 8)
                tree.insert(data: 12)
                tree.insert(data: 6)
                tree.insert(data: 9)
                tree.insert(data: 7)
                tree.insert(data: 30)

                tree.showTree()

                //print(tree.search(data: 10)) // Imprimirá true
                //print(tree.search(data: 7))  // Imprimirá false

                tree.preOrder()
                //tree.inOrder()
                //tree.postOrder()

                tree.deleteNode(data: 5)
                tree.showTree()

                tree.deleteNode(data: 20 )
                tree.showTree()

                tree.deleteNode(data: 9 )
                tree.showTree()
                */
                */
                var statusMenu = true
                
                while statusMenu == true {
                    print("\nREALIZAR UN CRUD EN UN ÁRBOL BINARIO DE BÚSQUEDA.\n")
                    print("Digite para ver el código de: \n1. Insertar un nodo. \n2. Mostrar el árbol binario. \n3. Buscar el valor de un nodo. \n4. Mostrar el árbol binario en PreOrden. \n5. Mostrar el árbol binario en InOrden. \n6. Mostrar el árbol binario en PostOrden. \n7. Eliminar un nodo.")
                    
                    if let menu = Int(readLine()!) {
                        switch menu {
                        case 1:
                            print("INSERTAR UN NODO EN EL ÁRBOL BINARIO DE BÚSQUEDA.")
                            print("\n1    //Crear un nuevo nodo. \n2    class Node { \n3        var data: Int \n4        var left: Node? \n5        var right: Node? \n6        var father: Node? \n7    \n8        init(data: Int, father: Node?) { \n9            self.data = data \n10           self.left = nil \n11           self.right = nil \n12           self.father = father \n13       } \n14   } \n15   \n16   class BinarySearchTree { \n17       var binaryTree: Node? \n18   \n19       //Insertar un nodo. \n20       func insert (data: Int) { \n21           func insertRecursive (node: Node?, data: Int, father: Node?) -> Node { \n22               if node == nil { \n23                   return Node(data: data, father: father) \n24               } \n25   \n26               if data < node!.data { \n27                   //Insertar nodo al lado izquierdo. \n28                   node?.left = insertRecursive(node: node?.left, data: data, father: node) \n29               } else { \n30                   //Insertar nodo al lado derecho. \n31                   node?.right = insertRecursive(node: node?.right, data: data, father: node) \n32               } \n33   \n34               return node! \n35           } \n36   \n37           binaryTree = insertRecursive(node: binaryTree, data: data, father: nil) \n38       } \n39   } \n40   \n41   //Crear el árbol binario de busqueda. \n42   let tree = BinarySearchTree() \n43   \n44   //Insertar datos o nodos. \n45   tree.insert(data: 10) \n46   tree.insert(data: 5) \n47   tree.insert(data: 15) \n48   tree.insert(data: 3) \n49   tree.insert(data: 20) \n50   tree.insert(data: 8) \n51   tree.insert(data: 12) \n52   tree.insert(data: 6) \n53   tree.insert(data: 9) \n54   tree.insert(data: 7) \n55   tree.insert(data: 30)")
                            statusMenu = false
                            break
                        
                        case 2:
                            print("MOSTRAR EL ÁRBOL BINARIO DE BÚSQUEDA.")
                            print("\n1    //Crear un nuevo nodo. \n2    class Node { \n3        var data: Int \n4        var left: Node? \n5        var right: Node? \n6        var father: Node? \n7    \n8        init(data: Int, father: Node?) { \n9            self.data = data \n10           self.left = nil \n11           self.right = nil \n12           self.father = father \n13       } \n14   } \n15   \n16   class BinarySearchTree { \n17       var binaryTree: Node? \n18   \n19       //Insertar un nodo. \n20       func insert (data: Int) { \n21           func insertRecursive (node: Node?, data: Int, father: Node?) -> Node { \n22               if node == nil { \n23                   return Node(data: data, father: father) \n24               } \n25   \n26               if data < node!.data { \n27                   //Insertar nodo al lado izquierdo. \n28                   node?.left = insertRecursive(node: node?.left, data: data, father: node) \n29               } else { \n30                   //Insertar nodo al lado derecho. \n31                   node?.right = insertRecursive(node: node?.right, data: data, father: node) \n32               } \n33   \n34               return node! \n35           } \n36   \n37           binaryTree = insertRecursive(node: binaryTree, data: data, father: nil) \n38       } \n39   \n40       //Mostrar todos los nodos del árbol. \n41       func showTree () { \n42           print(\"\") \n43           func showTreeRecursive (node: Node?, counter: Int) { \n44               if node == nil { \n45                   return \n46               } \n47   \n48               showTreeRecursive(node: node?.right, counter: counter + 1) \n49               for _ in 0 ..< counter { \n50                   print(\"   \", terminator: \"\") \n51               } \n52               print(node!.data) \n53               showTreeRecursive(node: node?.left, counter: counter + 1) \n54           } \n55   \n56           showTreeRecursive(node: binaryTree, counter: 0) \n57       } \n58   } \n59   \n60   //Crear el árbol binario de busqueda. \n61   let tree = BinarySearchTree() \n62   \n63   //Insertar datos o nodos. \n64   tree.insert(data: 10) \n65   tree.insert(data: 5) \n66   tree.insert(data: 15) \n67   tree.insert(data: 3) \n68   tree.insert(data: 20) \n69   tree.insert(data: 8) \n70   tree.insert(data: 12) \n71   tree.insert(data: 6) \n72   tree.insert(data: 9) \n73   tree.insert(data: 7) \n74   tree.insert(data: 30) \n75   \n76   //Mostrar el árbol \n77   tree.showTree()")
                            statusMenu = false
                            break
                            
                        case 3:
                            print("BUSCAR EL VALOR DE UN NODO EN EL ÁRBOL BINARIO DE BÚSQUEDA.")
                            print("\n1    //Crear un nuevo nodo. \n2    class Node { \n3        var data: Int \n4        var left: Node? \n5        var right: Node? \n6        var father: Node? \n7    \n8        init(data: Int, father: Node?) { \n9            self.data = data \n10           self.left = nil \n11           self.right = nil \n12           self.father = father \n13       } \n14   } \n15   \n16   class BinarySearchTree { \n17       var binaryTree: Node? \n18   \n19       //Insertar un nodo. \n20       func insert (data: Int) { \n21           func insertRecursive (node: Node?, data: Int, father: Node?) -> Node { \n22               if node == nil { \n23                   return Node(data: data, father: father) \n24               } \n25   \n26               if data < node!.data { \n27                   //Insertar nodo al lado izquierdo. \n28                   node?.left = insertRecursive(node: node?.left, data: data, father: node) \n29               } else { \n30                   //Insertar nodo al lado derecho. \n31                   node?.right = insertRecursive(node: node?.right, data: data, father: node) \n32               } \n33   \n34               return node! \n35           } \n36   \n37           binaryTree = insertRecursive(node: binaryTree, data: data, father: nil) \n38       } \n39   \n40       //Buscar un nodo en el árbol binario. \n41       func search (data: Int) -> Bool { \n42           func searchRecursive (node: Node?, data: Int) -> Bool { \n43               if node == nil { \n44                   return false \n45               } \n46   \n47               if data == node!.data { \n48                   return true \n49               } else if data < node!.data { \n50                   return searchRecursive(node: node?.left, data: data) \n51               } else { \n52                   return searchRecursive(node: node?.right, data: data) \n53               } \n54           } \n55   \n56           //Retornar el valor de la búsqueda. \n57           return searchRecursive(node: binaryTree, data: data) \n58       } \n59   } \n60   \n61   //Crear el árbol binario de busqueda. \n62   let tree = BinarySearchTree() \n63   \n64   //Insertar datos o nodos. \n65   tree.insert(data: 10) \n66   tree.insert(data: 5) \n67   tree.insert(data: 15) \n68   tree.insert(data: 3) \n69   tree.insert(data: 20) \n70   tree.insert(data: 8) \n71   tree.insert(data: 12) \n72   tree.insert(data: 6) \n73   tree.insert(data: 9) \n74   tree.insert(data: 7) \n75   tree.insert(data: 30) \n76   \n77   //Mostrar el árbol \n78   tree.showTree()")
                            statusMenu = false
                            break
                            
                        case 4:
                            print("MOSTRAR EL ÁRBOL BINARIO DE BÚSQUEDA EN \"PREORDEN\".")
                            print("\n1    //Crear un nuevo nodo. \n2    class Node { \n3        var data: Int \n4        var left: Node? \n5        var right: Node? \n6        var father: Node? \n7    \n8        init(data: Int, father: Node?) { \n9            self.data = data \n10           self.left = nil \n11           self.right = nil \n12           self.father = father \n13       } \n14   } \n15   \n16   class BinarySearchTree { \n17       var binaryTree: Node? \n18   \n19       //Insertar un nodo. \n20       func insert (data: Int) { \n21           func insertRecursive (node: Node?, data: Int, father: Node?) -> Node { \n22               if node == nil { \n23                   return Node(data: data, father: father) \n24               } \n25   \n26               if data < node!.data { \n27                   //Insertar nodo al lado izquierdo. \n28                   node?.left = insertRecursive(node: node?.left, data: data, father: node) \n29               } else { \n30                   //Insertar nodo al lado derecho. \n31                   node?.right = insertRecursive(node: node?.right, data: data, father: node) \n32               } \n33   \n34               return node! \n35           } \n36   \n37           binaryTree = insertRecursive(node: binaryTree, data: data, father: nil) \n38       } \n39   \n40       //Recorrer un árbol en \"PreOrden\". \n41       func preOrder () { \n42           func preOrderRecursive (node: Node?) { \n43               if node == nil { \n44                   return \n45               } \n46   \n47               print(\"\\(node!.data) - \", terminator: \"\") \n48               preOrderRecursive(node: node?.left) \n49               preOrderRecursive(node: node?.right) \n50           } \n51   \n52           preOrderRecursive(node: binaryTree) \n53       } \n54   } \n55   \n56   //Crear el árbol binario de busqueda. \n57   let tree = BinarySearchTree() \n58   \n59   //Insertar datos o nodos. \n60   tree.insert(data: 10) \n61   tree.insert(data: 5) \n62   tree.insert(data: 15) \n63   tree.insert(data: 3) \n64   tree.insert(data: 20) \n65   tree.insert(data: 8) \n66   tree.insert(data: 12) \n67   tree.insert(data: 6) \n68   tree.insert(data: 9) \n69   tree.insert(data: 7) \n70   tree.insert(data: 30) \n71   \n72   //Mostrar el árbol binario en \"PreOrden\". \n73   tree.preOrder()")
                            statusMenu = false
                            break
                            
                        case 5:
                            print("MOSTRAR EL ÁRBOL BINARIO DE BÚSQUEDA EN \"INORDEN\".")
                            print("\n1    //Crear un nuevo nodo. \n2    class Node { \n3        var data: Int \n4        var left: Node? \n5        var right: Node? \n6        var father: Node? \n7    \n8        init(data: Int, father: Node?) { \n9            self.data = data \n10           self.left = nil \n11           self.right = nil \n12           self.father = father \n13       } \n14   } \n15   \n16   class BinarySearchTree { \n17       var binaryTree: Node? \n18   \n19       //Insertar un nodo. \n20       func insert (data: Int) { \n21           func insertRecursive (node: Node?, data: Int, father: Node?) -> Node { \n22               if node == nil { \n23                   return Node(data: data, father: father) \n24               } \n25   \n26               if data < node!.data { \n27                   //Insertar nodo al lado izquierdo. \n28                   node?.left = insertRecursive(node: node?.left, data: data, father: node) \n29               } else { \n30                   //Insertar nodo al lado derecho. \n31                   node?.right = insertRecursive(node: node?.right, data: data, father: node) \n32               } \n33   \n34               return node! \n35           } \n36   \n37           binaryTree = insertRecursive(node: binaryTree, data: data, father: nil) \n38       } \n39   \n40       //Recorrer un árbol en \"InOrden\". \n41       func inOrder () { \n42           func inOrderRecursive (node: Node?) { \n43               if node == nil { \n44                   return \n45               } \n46   \n47               inOrderRecursive(node: node?.left) \n48               print(\"\\(node!.data) - \", terminator: \"\") \n49               inOrderRecursive(node: node?.right) \n50           } \n51   \n52           inOrderRecursive(node: binaryTree) \n53       } \n54   } \n55   \n56   //Crear el árbol binario de busqueda. \n57   let tree = BinarySearchTree() \n58   \n59   //Insertar datos o nodos. \n60   tree.insert(data: 10) \n61   tree.insert(data: 5) \n62   tree.insert(data: 15) \n63   tree.insert(data: 3) \n64   tree.insert(data: 20) \n65   tree.insert(data: 8) \n66   tree.insert(data: 12) \n67   tree.insert(data: 6) \n68   tree.insert(data: 9) \n69   tree.insert(data: 7) \n70   tree.insert(data: 30) \n71   \n72   //Mostrar el árbol binario en \"InOrden\". \n73   tree.inOrder()")
                            statusMenu = false
                            break
                            
                        case 6:
                            print("MOSTRAR EL ÁRBOL BINARIO DE BÚSQUEDA EN \"POSTORDEN\".")
                            print("\n1    //Crear un nuevo nodo. \n2    class Node { \n3        var data: Int \n4        var left: Node? \n5        var right: Node? \n6        var father: Node? \n7    \n8        init(data: Int, father: Node?) { \n9            self.data = data \n10           self.left = nil \n11           self.right = nil \n12           self.father = father \n13       } \n14   } \n15   \n16   class BinarySearchTree { \n17       var binaryTree: Node? \n18   \n19       //Insertar un nodo. \n20       func insert (data: Int) { \n21           func insertRecursive (node: Node?, data: Int, father: Node?) -> Node { \n22               if node == nil { \n23                   return Node(data: data, father: father) \n24               } \n25   \n26               if data < node!.data { \n27                   //Insertar nodo al lado izquierdo. \n28                   node?.left = insertRecursive(node: node?.left, data: data, father: node) \n29               } else { \n30                   //Insertar nodo al lado derecho. \n31                   node?.right = insertRecursive(node: node?.right, data: data, father: node) \n32               } \n33   \n34               return node! \n35           } \n36   \n37           binaryTree = insertRecursive(node: binaryTree, data: data, father: nil) \n38       } \n39   \n40       //Recorrer un árbol en \"PostOrden\". \n41       func postOrder () { \n42           func postOrderRecursive (node: Node?) { \n43               if node == nil { \n44                   return \n45               } \n46   \n47               postOrderRecursive(node: node?.left) \n48               postOrderRecursive(node: node?.right) \n49               print(\"\\(node!.data) - \", terminator: \"\") \n50           } \n51   \n52           postOrderRecursive(node: binaryTree) \n53       } \n54   } \n55   \n56   //Crear el árbol binario de busqueda. \n57   let tree = BinarySearchTree() \n58   \n59   //Insertar datos o nodos. \n60   tree.insert(data: 10) \n61   tree.insert(data: 5) \n62   tree.insert(data: 15) \n63   tree.insert(data: 3) \n64   tree.insert(data: 20) \n65   tree.insert(data: 8) \n66   tree.insert(data: 12) \n67   tree.insert(data: 6) \n68   tree.insert(data: 9) \n69   tree.insert(data: 7) \n70   tree.insert(data: 30) \n71   \n72   //Mostrar el árbol binario en \"PostOrden\". \n73   tree.postOrder()")
                            statusMenu = false
                            break
                            
                        case 7:
                            print("ELIMINAR UN NODO EN EL ÁRBOL BINARIO DE BÚSQUEDA.")
                            print("\n1    //Crear un nuevo nodo. \n2    class Node { \n3        var data: Int \n4        var left: Node? \n5        var right: Node? \n6        var father: Node? \n7    \n8        init(data: Int, father: Node?) { \n9            self.data = data \n10           self.left = nil \n11           self.right = nil \n12           self.father = father \n13       } \n14   } \n15   \n16   class BinarySearchTree { \n17       var binaryTree: Node? \n18   \n19       //Insertar un nodo. \n20       func insert (data: Int) { \n21           func insertRecursive (node: Node?, data: Int, father: Node?) -> Node { \n22               if node == nil { \n23                   return Node(data: data, father: father) \n24               } \n25   \n26               if data < node!.data { \n27                   //Insertar nodo al lado izquierdo. \n28                   node?.left = insertRecursive(node: node?.left, data: data, father: node) \n29               } else { \n30                   //Insertar nodo al lado derecho. \n31                   node?.right = insertRecursive(node: node?.right, data: data, father: node) \n32               } \n33   \n34               return node! \n35           } \n36   \n37           binaryTree = insertRecursive(node: binaryTree, data: data, father: nil) \n38       } \n39   \n40       //Eliminar un nodo. \n41       func deleteNode (data: Int) { \n42           //Determinar el nodo más  la izquierda posible. \n43           func minimumNode (node: Node?) -> Node? { \n44               if node == nil { \n45                   return \n46               } \n47   \n48               if node?.left != nil { \n49                   return minimumNode(node: node?.left) \n50               } else { \n51                   return node \n52               } \n53           } \n54       } \n55   \n56       //Reemplazar dos nodos. \n57       func replaceNode (node: Node?, newNode: Node?) { \n58           if node?.father != nil { \n59               //El nodo \"padre\" es asignado su nuevo nodo \"hijo\". \n60               if node?.data == node?.father?.left?.data { \n61                   node?.father?.left = newNode \n62               } else if node?.data == node?.father?.right?.data { \n63                   node?.father?.right = newNode \n64               } \n65           } \n66   \n67           if newNode?.data != nil { \n68               //Al nuevo nodo es asignado su nuevo nodo \"padre\". \n69               newNode?.father = node?.father \n70           } \n71       } \n72   \n73       func destroyNode (node: Node) { \n74           node.left = nil \n75           node.right = nil \n76       } \n77   \n78       func deleteFoundNode (nodeToDelete: Node) { \n79           //Eliminar un nodo que tiene dos hijos. \n80           if nodeToDelete.left != nil && nodeToDelete.right != nil { \n81               //El nodo más pequeños posibles. \n82               let minorNode:Node = minimumNode(node: nodeToDelete.right)! \n83               nodeToDelete.data = minorNode.data \n84   \n85               deleteFoundNode(nodeToDelete: minorNode) \n86           } else if nodeToDelete.left != nil { //Verificar si el nodo tiene un nodo \"hijo\" a la izquierda. \n87               replaceNode(node: nodeToDelete, newNode: nodeToDelete.left) \n88               destroyNode(node: nodeToDelete) \n89           } else if nodeToDelete.right != nil { //Verificar si el nodo tiene un nodo \"hijo\" a la derecha. \n90               replaceNode(node: nodeToDelete, newNode: nodeToDelete.right) \n91               destroyNode(node: nodeToDelete) \n92           } else { //El nodo que no tiene hijos. \n93               replaceNode(node: nodeToDelete, newNode: nil) \n94               destroyNode(node: nodeToDelete) \n95           } \n96       } \n97   \n98       func deleteNodeRecursive (node: Node?, data: Int ) { \n99           if node == nil { \n100              return \n101          } \n102 \n103          if node!.data < data { \n104              deleteNodeRecursive(node: node?.right, data: data) \n105          } else if node!.data > data { \n106              deleteNodeRecursive(node: node?.left, data: data) \n107          } else { \n108              deleteFoundNode(nodeToDelete: node!) \n109          } \n110  \n111          deleteNodeRecursive(node: binaryTree, data: data) \n112      } \n113  }\n114 \n115  //Crear el árbol binario de busqueda. \n116  let tree = BinarySearchTree() \n117  \n118  //Insertar datos o nodos. \n119  tree.insert(data: 10) \n120  tree.insert(data: 5) \n121  tree.insert(data: 121) \n122  tree.insert(data: 3) \n123  tree.insert(data: 20) \n124  tree.insert(data: 8) \n125  tree.insert(data: 12) \n126  tree.insert(data: 6) \n127  tree.insert(data: 9) \n128  tree.insert(data: 7) \n129  tree.insert(data: 30) \n130  \n131  //Eliminar un nodo. \n132  tree.deleteNode(data: 5)")
                            statusMenu = false
                            break
                            
                        default:
                            print("\n‼️La opción no se encuentra en el menu dado.‼️\n")
                        }
                    } else {
                        print("\n‼️Solo se pueden digitar números.‼️\n")
                    }
                }
                break
            
            case 7:
                print("Adios 👋.")
                statusMenu = false
                break
            
            default:
                print("\n‼️La opción no se encuentra en el menu dado.‼️\n")
        }
    } else {
        print("\n‼️Solo se pueden digitar números.‼️\n")
    }
}



