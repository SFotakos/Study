//
//  ViewController.swift
//  SillySong
//
//  Created by Spyridion Georges Fotakos on 08/07/2018.
//  Copyright © 2018 Spyridion Georges Fotakos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var lyricsView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func reset(_ sender: Any) {
        nameField.text = ""
        lyricsView.text = ""
    }
    
    @IBAction func displayLyrics(_ sender: Any) {
        let songLyrics = lyricsForName(lyricsTemplate: bananaFanaTemplate, fullName: nameField.text!)
        lyricsView.text = songLyrics
    }
}

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

let bananaFanaTemplate = [
    "<FULL_NAME>, <FULL_NAME>, Bo B<SHORT_NAME>",
    "Banana Fana Fo F<SHORT_NAME>",
    "Me My Mo M<SHORT_NAME>",
    "<FULL_NAME>"].joined(separator: "\n")

func lyricsForName(lyricsTemplate: String, fullName: String) -> String {
    return lyricsTemplate
        .replacingOccurrences(of: "<FULL_NAME>", with: fullName)
        .replacingOccurrences(of: "<SHORT_NAME>", with: shortNameFromName(name: fullName))
}

