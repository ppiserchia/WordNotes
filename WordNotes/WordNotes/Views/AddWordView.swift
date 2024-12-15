//
//  LanguageDetailedView.swift
//  WordNotes
//
//  Created by Pasquale Piserchia on 07/12/24.
//

import SwiftUI

struct AddWordView: View {
    @State var showModal = false
    @State private var word: String = ""
    @State private var eventualTransliteration: String = ""
    @State private var translation: String = ""
    @State private var meaning: String = ""
    

//    var selectedLanguage: Language
    
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
                    TextField("Meaning", text: $meaning)
                    
                }
                
                Section(header: Text("Language")) {
//                    Picker("Select")
                           }
            }
            
            .navigationTitle("Add Word")
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button("Cancel") {
                        showModal.toggle()
                    }
                }
                
                
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Add") {
                        
                    }
                }
            }
        }
                
        
            }
        }
    


#Preview {
    AddWordView()
}
