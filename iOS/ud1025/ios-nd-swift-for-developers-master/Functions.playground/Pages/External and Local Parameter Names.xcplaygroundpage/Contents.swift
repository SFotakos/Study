//: [Previous](@previous)

//: ## External and Local Parameter Names
// Prints out a string
func reverseAndPrint(_ string: String) {
    var reversedString = ""
    for character in string {
        reversedString = "\(character)" + reversedString
    }
    print(reversedString)
}

// Takes a named parameter.
func reverseAndPrint(forwardString string: String) {
    var reversedString = ""
    for character in string {
        reversedString = "\(character)" + reversedString
    }
    print(reversedString)
}

reverseAndPrint("regal")
reverseAndPrint(forwardString:"time")

//: [Next](@next)




