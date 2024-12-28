//
//  WordViewModel.swift
//  WordNotes
//
//  Created by Pasquale Piserchia on 12/12/24.
//

import Foundation

class WordViewModel: ObservableObject {
    @Published var words: [Word] = [
        Word(
            word: "Лягушка",
            eventualTransliteration: "Ljagushka",
            translation: "Rana",
            meaning: "Ljagushka is a Russian word that refers to a frog.",
            language: Language(language: "Russian", emoji: "🇷🇺")
        ),
        Word(
            word: "Chamo",
            eventualTransliteration: "",
            translation: "Friend, bro, homie",
            meaning: "Chamo is a Venezuelan expression used to refer to your friend/homie/best friend.",
            language: Language(language: "Spanish", emoji: "🇪🇸")
        ),
        Word(
            word: "truc",
            eventualTransliteration: "",
            translation: "Thing",
            meaning: "Truc is a French word that means thing.",
            language: Language(language: "French", emoji: "🇫🇷")
        )
    ]
    
    // Function to add a new word
    func addWord(_ word: Word) {
        words.append(word)
    }
}

//    func addWords(_ word: String, to language: Language) {
//        if let index = languages.firstIndex((where: { $0.id == language.id } {
//            languages[index].words.append(word)
//    }
//    )}
//    
    


