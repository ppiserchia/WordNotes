//
//  LanguageViewModel.swift
//  WordNotes
//
//  Created by Pasquale Piserchia on 07/12/24.
//

import Foundation
import SwiftUI

@Observable class LanguageViewModel {
    var language = [
        Language(language: "English", emoji: "🇬🇧"),
        Language(language: "French", emoji: "🇫🇷"),
        Language(language: "Spanish", emoji: "🇪🇸"),
        Language(language: "Italian", emoji: "🇮🇹"),
        Language(language: "German", emoji: "🇩🇪"),
        Language(language: "Portuguese", emoji: "🇵🇹"),
        Language(language: "Russian", emoji: "🇷🇺"),
    ]
    
    
    func add(_ newLanguage: Language) {
        self.language.insert(newLanguage, at: 0)
    }


func delete(at offsets: IndexSet) {
    language.remove(atOffsets: offsets)
}
}

//
//    struct AddLanguage: Identifiable {
//        var AddLanguage = [AddLanguage]
//    }








