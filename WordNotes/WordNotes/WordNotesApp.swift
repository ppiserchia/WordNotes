//
//  WordNotesApp.swift
//  WordNotes
//
//  Created by Pasquale Piserchia on 12/12/24.
//

import SwiftUI

@main
struct WordNotesApp: App {
    
    @ObservedObject var languageVM = LanguageViewModel()
    @ObservedObject var wordVM = WordViewModel()

    var body: some Scene {
        WindowGroup {
            ListOfLanguagesView()
                .environmentObject(languageVM)
                .environmentObject(wordVM)
        }
    }
}
