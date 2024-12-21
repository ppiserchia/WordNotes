//
//  LanguageDetailedView.swift
//  WordNotes
//
//  Created by Pasquale Piserchia on 07/12/24.
//

import SwiftUI

struct AddWordView: View {
    @EnvironmentObject var languageVM: LanguageViewModel
    @EnvironmentObject var wordVM: WordViewModel
    @Binding var addWord: Bool
    
    
    let selectedLanguage: Language // Pass the selected language directly
    //    @State private var selectedLanguage: Language?
    @State private var word: String = ""
    @State private var eventualTransliteration: String = ""
    @State private var translation: String = ""
    @State private var meaning: String = ""
    
    var body: some View {
        NavigationStack {
            Form {
                Section(header: Text("Word")) {
                    TextField("Word", text: $word)
                }
                
                Section(header: Text("Eventual Transliteration")) {
                    TextField("Eventual Transliteration", text: $eventualTransliteration)
                }
                
                Section(header: Text("Translation")) {
                    TextField("Translation", text: $translation)
                }
                
                Section(header: Text("Meaning")) {
                    TextEditor( text: $meaning)
                }
                
                //                Section(header: Text("Language")) {
                //                    Picker("Select a Language", selection: $selectedLanguage) {
                //                        ForEach(languageVM.languages) { language in
                //                            Text("\(language.language) \(language.emoji)")
                //                                .tag(language as Language?)
                //                        }
                //                    }
                //                    .pickerStyle(.navigationLink)
                //                }
            }
            .navigationTitle("Add Word in \(selectedLanguage.language) \(selectedLanguage.emoji)")
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button("Cancel") {
                        addWord = false
                    }
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Add") {
                        // Ensure the required fields are not empty
                        if !word.isEmpty, !translation.isEmpty, !meaning.isEmpty {
                            let newWord = Word(
                                word: word,
                                eventualTransliteration: eventualTransliteration,
                                translation: translation,
                                meaning: meaning,
                                language: selectedLanguage
                            )
                            
                            wordVM.addWord(newWord) // Add the new word
                            addWord = false // Dismiss the view
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    let previewLanguage = Language(language: "Spanish", emoji: "🇪🇸")
    AddWordView(addWord: .constant(true), selectedLanguage: previewLanguage)
        .environmentObject(WordViewModel())
    
}


    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    ///MY CODE
//    @EnvironmentObject var languageVM : LanguageViewModel
//    @EnvironmentObject var languages : LanguageViewModel
//    
//    @Binding var addWord : Bool
//    
//    @State private var word: String = ""
//    @State private var eventualTransliteration: String = ""
//    @State private var translation: String = ""
//    @State private var meaning: String = ""
//    @State private var selectedLanguage: Language? = nil
//    @State private var addedWord: String = ""
//    
//    
//    
//    var body: some View {
//        NavigationStack {
//            Form {
//                Section(header: Text("Word")) {
//                    TextField("Word", text: $word)
//                }
//                
//                Section(header: Text("Eventual Transliteration")) {
//                    TextField("Eventual Transliteration", text: $eventualTransliteration)
//                }
//                
//                Section(header: Text("Translation")) {
//                    TextField("Translation", text: $translation)
//                }
//                
//                Section(header: Text("Meaning")) {
//                    TextField("Meaning", text: $meaning)
//                    
//                }
//                Section(header: Text("Language")) {
//                    Picker("Select a Language:", selection: $selectedLanguage) {
//                        ForEach(languages.languages) { language in
//                            Text("\(languages.languages) \(languages.emoji)")
//                                .tag(language as Language?)[]
//                        }
//                    }
//                }
//            }
//            
//            .navigationTitle("Add Word")
//            .toolbar {
//                ToolbarItem(placement: .topBarLeading) {
//                    Button("Cancel") {
//                        addWord = false
//                    }
//                }
//                
//                ToolbarItem(placement: .topBarTrailing) {
//                    Button("Add") {
//                        
//                        
//                    }
//                    }
//                }
//            }
//        }
//    }
//
//
//
//
//#Preview {
//    AddWordView(addWord: .constant(true)
//    ).environmentObject(LanguageViewModel())
//}
