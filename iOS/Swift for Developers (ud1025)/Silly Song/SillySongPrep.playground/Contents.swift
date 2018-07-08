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
