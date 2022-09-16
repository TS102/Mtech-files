/*:
## Exercise - For-In Loops
 
 Create a for-in loop that loops through values 1 to 100, and prints each of the values.
 */
for number in 1...100 {
print("count is \(number)")
}

//:  Create a for-in loop that loops through each of the characters in the `alphabet` string below, and prints each of the values alongside the index.
let alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ".enumerated()
for letters in alphabet {
    print(letters)
//    print("The value at \(letters.offset) is \(letters.element)")
}

//:  Create a `[String: String]` dictionary, where the keys are names of states and the values are their capitals. Include at least three key/value pairs in your collection, then use a for-in loop to iterate over the pairs and print out the keys and values in a sentence.
var States = ["Utah": "Salt lake city", "Alabama": "Montgomery", "Arizona": "Phoenix"]
for (state, capitols) in States {
    print("The captitol of \(state) is \(capitols)")
}
/*:
page 1 of 6  |  [Next: App Exercise - Movements](@next)
 */
