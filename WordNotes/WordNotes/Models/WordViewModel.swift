//
//  WordViewModel.swift
//  WordNotes
//
//  Created by Pasquale Piserchia on 12/12/24.
//

import Foundation
import SwiftUI

@Observable class WordViewModel {
    var word = [
        Word(word: "Лягушка",
             eventualTransliteration: "Ljagushka",
             translation: "Rana",
             meaning: "Ljagushka is a species of frog."
//             language: Language.init(language: "Russian", emoji: "🇷🇺")
            )
    ]
    
    
    func add (_ word: Word) {
        self.word.insert(word, at: 0)
    }
    
}

