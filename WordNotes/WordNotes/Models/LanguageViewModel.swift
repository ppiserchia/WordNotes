//
//  LanguageViewModel.swift
//  WordNotes
//
//  Created by Pasquale Piserchia on 07/12/24.
//

import Foundation
import SwiftUI

class LanguageViewModel: ObservableObject {
    @Published var languages : [Language] = [
        Language(language: "English", emoji: "🇬🇧"),
        Language(language: "French", emoji: "🇫🇷"),
        Language(language: "Spanish", emoji: "🇪🇸"),
        Language(language: "Italian", emoji: "🇮🇹"),
        Language(language: "German", emoji: "🇩🇪"),
        Language(language: "Portuguese", emoji: "🇵🇹"),
        Language(language: "Russian", emoji: "🇷🇺")
    ]
    
    
    
    @Published var words: [Word] = []
    
    func add(_ language: Language) {
        self.languages.insert(language, at: 0)
    }


    func delete(at offsets: IndexSet) {
        languages.remove(atOffsets: offsets)
    }
 
    func addWords(_ newWord: Word) {
        words.append(newWord)
    }
    
    
    
}



//    func add(_ newWords: Word) {
//        self.Word.insert(newWords, at: 0)
//    }
    
    









