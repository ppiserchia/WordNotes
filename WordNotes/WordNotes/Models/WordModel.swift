//
//  WordModel.swift
//  WordNotes
//
//  Created by Pasquale Piserchia on 12/12/24.
//

import Foundation
import SwiftUI

struct Word: Identifiable {
    var id: UUID = UUID()
    
    var word: String
    var eventualTransliteration: String
    var translation: String
    var meaning: String
//    var language: Language
}


