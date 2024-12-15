//
//  ContentView.swift
//  WordNotes
//
//  Created by Pasquale Piserchia on 06/12/24.
//

import SwiftUI

struct ListOfLanguagesView: View {
    @State var showModal = false // Use @State so the Modal can open and close
    @State private var languageVM = LanguageViewModel() // Grab the items from the ViewModel
    
    var body: some View {
        
        NavigationStack {
            
            List {
                ForEach (languageVM.language, id: \.language) { language in
                    NavigationLink(destination: DetailView(language: language.language, emoji: language.emoji)) {
                        HStack {
                            Text(language.language)
                            Text(language.emoji)
                            
                        }
                    }
                }
                .onDelete(perform: languageVM.delete)
            }
            
           
            // Modifier for adding a title
            .navigationTitle("Welcome! 📝")
            
            // Add a button that adds a language
            
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        showModal.toggle()
                    } label: {
                        Image(systemName: "plus")
                    }
                }
            }
            .sheet(isPresented: $showModal) {
                AddALanguageView(
                    languageVM: languageVM,
                    showModal: $showModal,
                    add: { newLanguage in
                        languageVM.add(newLanguage)
                    }
                )
            }
        }
    }
}

/// View for a single language
struct DetailView: View {
    @State private var showModal: Bool = false
    let language: String
    let emoji: String
    
    var body: some View {
        NavigationStack {
            List {
                Text("Details for \(language) \(emoji)")
                    .font(.headline)
            }
            .navigationTitle("\(language) \(emoji)")

            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        showModal.toggle()
                    } label: {
                        Image(systemName: "plus")
                    }
                }
            }
            .sheet(isPresented: $showModal) {
                AddWordView()
            }
        }
    }
}


#Preview {
    ListOfLanguagesView()
}


