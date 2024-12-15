//
//  AddALanguageModel.swift
//  WordNotes
//
//  Created by Pasquale Piserchia on 07/12/24.
//

import Foundation
import SwiftUI

struct Language: Identifiable {
    var id: UUID = UUID()
    
    var language: String
    var emoji: String
}
