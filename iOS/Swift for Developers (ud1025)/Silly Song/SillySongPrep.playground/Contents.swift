//: Playground - noun: a place where people can play

import UIKit
func shortNameFromName(name: String) -> String {
    var lowerCaseName = name.folding(options: .diacriticInsensitive, locale: NSLocale.current).lowercased()
    let vowelCharacterSet = CharacterSet.init(charactersIn: "aeiou")
    for unicodeScalar in lowerCaseName.unicodeScalars {
        if vowelCharacterSet.contains(UnicodeScalar(unicodeScalar.value)!) {
            return String(lowerCaseName[lowerCaseName.index(of: Character(unicodeScalar))!...])
        }
    }
    return name
}

shortNameFromName(name: "Nate")
shortNameFromName(name: "Talia")
shortNameFromName(name: "Spyridion")

shortNameFromName(name: "TALIA")
shortNameFromName(name: "Zöe")
shortNameFromName(name: "cccc")
shortNameFromName(name: "aaaa")
shortNameFromName(name: "")


let bananaFanaTemplate = [
    "<FULL_NAME>, <FULL_NAME>, Bo B<SHORT_NAME>",
    "Banana Fana Fo F<SHORT_NAME>",
    "Me My Mo M<SHORT_NAME>",
    "<FULL_NAME>"].joined(separator: "\n")

func lyricsForName(lyricsTemplate: String, fullName: String) -> String {
    var lyrics = lyricsTemplate
    
    lyrics = lyrics.replacingOccurrences(of: "<FULL_NAME>", with: fullName)
    lyrics = lyrics.replacingOccurrences(of: "<SHORT_NAME>", with: shortNameFromName(name: fullName))
    
    return lyrics
}

print(lyricsForName(lyricsTemplate: bananaFanaTemplate, fullName: "Nate"))
print("-----------------------\n")
print(lyricsForName(lyricsTemplate: bananaFanaTemplate, fullName: "Talia"))
print("-----------------------\n")
print(lyricsForName(lyricsTemplate: bananaFanaTemplate, fullName: "Spyridion"))
print("-----------------------\n")
