/*:
## Exercise - Type Casting and Inspection

 Create a collection of type [Any], including a few doubles, integers, strings, and booleans within the collection. Print the contents of the collection.
 */

import Foundation
import Darwin
var collection: [Any] = [3.0, 2.4, 1, 6, "hello", "world", 2==0, 3==3]
print(collection)
//:  Loop through the collection. For each integer, print "The integer has a value of ", followed by the integer value. Repeat the steps for doubles, strings and booleans.
//if let numbers = collection[2] as? Int {
//    print("the integer has a value of \(numbers)")
//}
for items in collection {
    if let integer = items as? Int {
        print("the integer has a value of \(integer)")
    } else if let bool = items as? Bool {
        print("the collection contains bools \(bool)")
    } else if let dubs = items as? Double {
        print("The double has a value of \(dubs)")
    } else if let str = items as? String {
        print("The strings have values of \(str)")
    }
}

//:  Create a [String : Any] dictionary, where the values are a mixture of doubles, integers, strings, and booleans. Print the key/value pairs within the collection
var dictionaryOfManyTypes: [String: Any] = ["Double": 2.3, "double": 4.5, "int1": 12, "int2": 45, "age": "19", "sport": "jerserynum", "12": 2==2, "boole": 3==1]
print(dictionaryOfManyTypes)
//:  Create a variable `total` of type `Double` set to 0. Then loop through the dictionary, and add the value of each integer and double to your variable's value. For each string value, add 1 to the total. For each boolean, add 2 to the total if the boolean is `true`, or subtract 3 if it's `false`. Print the value of `total`.
var total: Double = 0
for items in dictionaryOfManyTypes.values {
    if let doublesInDict = items as? Double {
     total += doublesInDict
    } else if let intsInDict = items as? Int {
        total += Double(intsInDict)
    } else if items is String {
        total += 1
    } else if let trueOrFalse = items as? Bool {
        if trueOrFalse == true {
            total += 2
        } else {
            total -= 3
        }
    }
}
print(total)
//:  Create a variable `total2` of type `Double` set to 0. Loop through the collection again, adding up all the integers and doubles. For each string that you come across during the loop, attempt to convert the string into a number, and add that value to the total. Ignore booleans. Print the total.
var total2: Double = 0
for items in dictionaryOfManyTypes.values {
    if let doublesInDict = items as? Double {
     total2 += doublesInDict
    } else if let intsInDict = items as? Int {
        total2 += Double(intsInDict)
    } else if let str = items as? String {
        Double(str)
    }
}
print(total2)
/*:
page 1 of 2  |  [Next: App Exercise - Workout Types](@next)
 */
