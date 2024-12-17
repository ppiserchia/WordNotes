//
//  AddALanguageView.swift
//  WordNotes
//
//  Created by Pasquale Piserchia on 06/12/24.
//
import SwiftUI

struct AddALanguageView: View {
    
    
    @EnvironmentObject var languageVM: LanguageViewModel

//    @State var languageVM = LanguageViewModel ()
    @Binding var showModal: Bool
    
    var add: (_ newLanguage: Language) -> Void
    
    @State private var selectedLanguage: String? // Track the selected language
    @State private var newLanguageName: String = "" // New language name
    @State private var newLanguageEmoji: String = "" // New language emoji
    
    var body: some View {
        NavigationStack {
            VStack {
                
                Form {
                    Section("Language") {
                        TextField("Enter Language Name", text: $newLanguageName)
                            .padding()
                    }
                    Section("Emoji") {
                        TextField("Enter Emoji", text: $newLanguageEmoji)
                            .padding()
                    }
                }
                
            }
        
            .navigationTitle("Add a Language")
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button("Cancel") {
                        showModal.toggle()
                    }
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Add") {
                        // Add a new language to the ViewModel
                        if !newLanguageName.isEmpty && !newLanguageEmoji.isEmpty {
                            let userLanguage = Language(language: newLanguageName, emoji: newLanguageEmoji)
                            add(userLanguage)
                            showModal = false
                        }
                    }
                }
            }
        }
    }
}

//#Preview {
//    AddALanguageView(
//        languageVM: LanguageViewModel(),
//        showModal: .constant(false),
//        add: { language in }
//    )
//}
