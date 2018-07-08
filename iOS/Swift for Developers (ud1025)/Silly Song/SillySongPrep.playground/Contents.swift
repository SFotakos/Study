//: Playground - noun: a place where people can play

import UIKit
func shortNameFromName(name: String) -> String {
    let vogalCharacterSet = CharacterSet.init(charactersIn: "aeiou")
    for unicodeScalar in name.unicodeScalars {
        if vogalCharacterSet.contains(UnicodeScalar(unicodeScalar.value)!) {
            return String(name[name.index(of: Character(unicodeScalar))!...])
        }
    }
    return name
}

shortNameFromName(name: "Nate")
shortNameFromName(name: "Talia")
shortNameFromName(name: "Spyridion")

shortNameFromName(name: "cccc")
shortNameFromName(name: "aaaa")
