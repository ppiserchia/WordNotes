//
//  LanguageViewModel.swift
//  WordNotes
//
//  Created by Pasquale Piserchia on 07/12/24.
//

import Foundation
import SwiftUI

@Observable class LanguageViewModel {
   var languageExisting = [
       LanguageModel(language: "English", emoji: "🇬🇧"),
       LanguageModel(language: "French", emoji: "🇫🇷"),
       LanguageModel(language: "Spanish", emoji: "🇪🇸"),
       LanguageModel(language: "Italian", emoji: "🇮🇹"),
       LanguageModel(language: "German", emoji: "🇩🇪"),
       LanguageModel(language: "Portuguese", emoji: "🇵🇹")
    ]
}

//func add(_LanguageExisting: languageExisting) {
//    self.languageExisting.insert(language, at: 0)
//}


//
//    struct AddLanguage: Identifiable {
//        var AddLanguage = [AddLanguage]
//    }








