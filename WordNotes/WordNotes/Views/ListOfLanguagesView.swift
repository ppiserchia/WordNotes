//
//  ContentView.swift
//  WordNotes
//
//  Created by Pasquale Piserchia on 06/12/24.
//

import SwiftUI

struct ListOfLanguagesView: View {
@State private var showModal: Bool = false

    var languages = [
        "Russian 🇷🇺"
    ]
    
    var body: some View {
        NavigationStack {
            List(languages, id: \.self) { language in
                NavigationLink(destination: DetailView(language: language)) {
                    Text(language)
                }
                .sheet(isPresented: $showModal, content: {
                    AddaLanguageView()
                    })
                
            }
            .navigationTitle("Languages")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        showModal.toggle()
                    } label: {
                        Image(systemName: "plus")
                    }
                }
            }
        }
    }
}
    //View di ogni singola lingua

struct DetailView: View {
    @State private var showModal: Bool = false
    let language: String
    
    var body: some View {
        NavigationStack {
            List {
                Text("")
                    .padding()
                
                
                
            }
            .sheet(isPresented: $showModal, content: {
                AddWordView()
            })
            .navigationTitle("\(language)")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        showModal.toggle()
                    } label: {
                        Image(systemName: "plus")
                    }
                }
            }
        }
    }
}
    #Preview {
        ListOfLanguagesView()
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    //struct ListOfLanguagesView: View {
    //    @State private var languages = [
    //        ("Russian 🇷🇺", RussianView()),
    //                                    "French 🇫🇷",
    //                                    "German 🇩🇪", "Italian 🇮🇹", "English 🇬🇧", "Swedish 🇸🇪", "Portuguese 🇵🇹"]
    //    @State private var showModal = false
    //
    //    var body: some View {
    //        NavigationStack {
    //            List(languages.indices, id: \.self) { index in
    //                HStack {
    //                    Text(languages[index])
    //                    Spacer()
    //                    Image(systemName: "chevron.right")
    //                        .foregroundColor(.gray)
    //                }
    //                .sheet(isPresented: $showModal, content: {
    //                    AddAlanguageView()
    //                })
    //
    //                .navigationTitle("Languages")
    //                .navigationBarTitleDisplayMode(.large)
    //            }
    //                .toolbar {
    //                    ToolbarItem {
    //                        Button {
    //                            showModal.toggle()
    //                        } label: {
    //                            Image(systemName: "plus")
    //                        }
    //                    }
    //                }
    //
    //            }
    //        }
    //    }
    //
//    #Preview {
//        ListOfLanguagesView()
//    }
//    

