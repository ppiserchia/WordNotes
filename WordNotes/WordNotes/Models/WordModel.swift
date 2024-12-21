//
//  WordModel.swift
//  WordNotes
//
//  Created by Pasquale Piserchia on 12/12/24.
//

import Foundation

struct Word: Identifiable, Hashable {
    let id = UUID()
    let word: String
    let eventualTransliteration: String
    let translation: String
    let meaning: String
    let language: Language
}
