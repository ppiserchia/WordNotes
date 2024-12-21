//
//  ContentView.swift
//  WordNotes
//
//  Created by Pasquale Piserchia on 06/12/24.
//

import SwiftUI

struct ListOfLanguagesView: View {
    @State private var showModal = false // Use @State for modal
    @EnvironmentObject var languageVM: LanguageViewModel // it lets grab the data from tht ViewModel
    @EnvironmentObject var wordVM: WordViewModel // it lets grab the data from tht ViewModel

    var body: some View {
        NavigationStack {
            List {
                ForEach(languageVM.languages, id: \.id) { language in
                    NavigationLink(destination: DetailView(language: language)) {
                        HStack {
                            Text(language.language)
                            Text(language.emoji)
                        }
                    }
                }
                .onDelete(perform: languageVM.delete)
            }
            .navigationTitle("Welcome! 📝") // Title
            
            ///TOOLBAR SECTION
            
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        showModal.toggle()
                    } label: {
                        Image(systemName: "plus")
                    }
                }
            }
            
            
            /// Create the sheet
            
            .sheet(isPresented: $showModal) {
                AddALanguageView(
                    showModal: $showModal,
                    add: { language in
                        languageVM.add(language)
                    }
                )
                .environmentObject(languageVM)
            }
        }
    }
}

     /// Detail View of Each Language

struct DetailView: View {
    @EnvironmentObject var wordVM: WordViewModel
    let language: Language
    @State private var addWord = false

    var body: some View {
        NavigationStack {
            List {
                Section(header: Text("Words")) {
                    ForEach(wordVM.words.filter { $0.language == language }) { word in
                        NavigationLink(destination: DetailedWordView(language: language, word: word)) {
                            VStack(alignment: .leading) {
                                Text(word.word)
                                    .font(.headline)
                                
                                Text("Translation: \(word.translation)")
                                    .font(.subheadline)
                                    .foregroundColor(.gray)
                            }
                        }
                    }
                }
            }
            .navigationTitle("\(language.language) \(language.emoji)")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: { addWord = true }) {
                        Image(systemName: "plus")
                    }
                }
            }
            .sheet(isPresented: $addWord) {
                AddWordView(addWord: $addWord, selectedLanguage: language)
                    .environmentObject(wordVM)
            }
        }
    }
}

#Preview {
    ListOfLanguagesView()
        .environmentObject(LanguageViewModel())
        .environmentObject(WordViewModel())
}

