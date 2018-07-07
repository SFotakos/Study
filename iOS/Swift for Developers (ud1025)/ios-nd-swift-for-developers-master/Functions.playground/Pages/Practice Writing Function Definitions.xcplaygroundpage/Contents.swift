//: [Previous](@previous)

//: ## Practice writing function definitions
//: Example 1 - firstCharacterOf
// TODO: Write a function that takes in a string and returns the first character of that string.
func firstCharacter(of word: String) -> Character {
    return word[word.startIndex]
}

firstCharacter(of: "Mom")


func placeFirstLetterLast(_ myString: String) -> String {
    var myString = myString
    myString.append(firstCharacter(of: myString))
    myString.remove(at: myString.startIndex)
    return myString
}

placeFirstLetterLast("Mom")



















































//: Example 2 - placeFirstLetterLast
// TODO: Write placeFirstLetterLast function here.



//func placeFirstLetterLast(_ myString: String) -> String {
//    var myString = myString
//    myString.append(firstCharacterOf(myString))
//    myString.remove(at: myString.startIndex)
//    return myString
//}
//
//
//
//
//placeFirstLetterLast("Mom")
//
//
////: Example 3 - filterByYear
//class MovieArchive {
//}
//
//var aiThemedMovies = ["Metropolis":1927, "2001: A Space Odyssey":1968, "Blade Runner":1982, "War Games" : 1983, "Terminator": 1984, "The Matrix":1999, "A.I.":2001, "Her": 2013, "Ex Machina":2015]
//: [Next](@next)
