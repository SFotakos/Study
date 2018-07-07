//: [Previous](@previous)
import Foundation

//: __Exercise 1.__
//:
//:Earlier we used the method, remove() to remove the first letter of a string. This method belongs to the String class. See if you can use this same method to remove the last letter of a string.
var string = "stuff"
string.remove(at: string.index(before: string.endIndex))

//:Test out your discovery below by returning the last letter of the String, "bologna".
var word = "bologna"
word.remove(at: word.index(before: word.endIndex))
print(word)
//: __Exercise 2__
//:
//: Write a function called combineLastCharacters. It should take in an array of strings, collect the last character of each string and combine those characters to make a new string to return. Use the strategy you discovered in Problem 1 along with a for-in loop to write combineLastCharacters. Then try it on the nonsenseArray below.
var nonsenseArray = ["bungalow", "buffalo", "indigo", "although", "Ontario", "albino", "%$&#!"]
func combineLastCharacters(_ array: [String]) -> String {
    var combinedString = ""
    for string in array {
        combinedString.append(string[string.index(before: string.endIndex)])
    }
    
    return combinedString
}

combineLastCharacters(nonsenseArray)
//: __Exercise 3__
//:
//: Imagine you are writing an app that keeps track of what you spend during the week. Prices of items purchased are entered into a "price" textfield. The "price" field should only allow numbers, no letters.

//: CharacterSet.decimalDigitCharacterSet() is used below to define a set that is only digits. Using that set, write a function that takes in a String and returns true if that string is numeric and false if it contains any characters that are not numbers.

//: __3a.__ Write a signature for a function that takes in a String and returns a Bool

let digits = CharacterSet.decimalDigits
func isValidPrice(_ price: String) -> Bool {
    var isValid = true

    for character in price.unicodeScalars {
        if (!digits.contains(character)){
            isValid = false
            break
        }
    }

    return isValid
}

isValidPrice("R$1,23")
isValidPrice("1,23")
isValidPrice("1.23")
isValidPrice("123")
//: __Exercise 4__
//:
//: Write a function that takes in an array of dirtyWord strings, removes all of the four-letter words, and returns a clean array.
let dirtyWordsArray = ["phooey", "darn", "drat", "blurgh", "jupiters", "argh", "fudge"]
func removeFourLetterWord(_ wordArray: [String]) -> [String] {
    var newArray = [String]()
    for word in wordArray {
        if word.count != 4 {
            newArray.append(word)
        }
    }
    
    return newArray
}
removeFourLetterWord(dirtyWordsArray)
//: __Exercise 5__
//:
//: Write a method, filterByDirector(), that belongs to the MovieArchive class.  This method should take in a dictionary of movie titles and a string representing the name of a director and return an array of movies created by that director. You can use the movie dictionary below. To test your method, instantiate an instance of the MovieArchive class and call filterByDirector from that instance.

var movies:Dictionary<String,String> = [ "Boyhood":"Richard Linklater","Inception":"Christopher Nolan", "The Hurt Locker":"Kathryn Bigelow", "Selma":"Ava Du Vernay", "Interstellar":"Christopher Nolan"]

class MovieArchive {
    
    func filterByDirector(_ movieDict: Dictionary<String,String>, director: String) -> [String] {
        var moviesByDirector = [String]()
        for (movie, dictDirector) in movieDict {
            if (director == dictDirector) {
                moviesByDirector.append(movie)
            }
        }
        return moviesByDirector
    }
}

var myArchive = MovieArchive()
myArchive.filterByDirector(movies, director: "Christopher Nolan")


//: [Next](@next)
