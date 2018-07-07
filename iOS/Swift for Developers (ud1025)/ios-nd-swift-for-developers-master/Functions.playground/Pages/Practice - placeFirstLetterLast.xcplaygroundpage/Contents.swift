//: [Previous](@previous)
import Foundation

func firstCharacter(of word: String) -> Character {
    return word[word.startIndex]
}

// TODO: Implement placeFirstLetterLast() here!
func placeFirstLetterLast(_ myString: String) -> String {
    var myString = myString
    myString.append(firstCharacter(of: myString))
    myString.remove(at: myString.startIndex)
    return myString
}

placeFirstLetterLast("Mom")
//: [Next](@next)
