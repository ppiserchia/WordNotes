//
//  AddALanguageModel.swift
//  WordNotes
//
//  Created by Pasquale Piserchia on 07/12/24.
//

import Foundation
import SwiftUI

//struct Language: Identifiable, Hashable {
//    var id: UUID = UUID()
//    
//    var language: String
//    var emoji: String
//    var words = []
//}


struct Language: Identifiable, Hashable, Equatable {
    let id = UUID()
    let language: String
    let emoji: String
    var words: [Words] = [] // Words specific to this language
}

struct Words: Identifiable, Hashable, Equatable {
    let id = UUID()
    var text: String
    var transliteration: String
    var translation: String
    var meaning: String
}









