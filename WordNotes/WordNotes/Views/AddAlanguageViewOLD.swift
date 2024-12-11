//
//  SingleLanguageView.swift
//  WordNotes
//
//  Created by Pasquale Piserchia on 06/12/24.
//

import SwiftUI
struct AddAlanguageView: View {
    @State var language: String = ""
    @State private var languages = ["Russian 🇷🇺",
                                    "Spanish 🇪🇸",
                                    "French 🇫🇷",
                                    "Japanese 🇯🇵",
                                    "Italian 🇮🇹",
                                    "English 🇬🇧",
                                    "Swedish 🇸🇪",
                                    "Portuguese 🇵🇹"]
  
    @State private var showModal: Bool = false
    @State private var selectedLanguage: String?
    
    var body: some View {
        NavigationStack {
            List(languages.indices, id: \.self) { index in
                HStack {
                    Text(languages[index])
                    Spacer()
                    if selectedLanguage == languages[index] {
                        Image(systemName: "checkmark")
                            .foregroundColor(Color.blue)
                    }
                }
                
                .contentShape(Rectangle()) // Rende cliccabile l'intero elemento
                .onTapGesture {
                    selectedLanguage = (selectedLanguage == languages[index]) ? nil : languages[index]
                }
                
                .navigationTitle("Add a Language")
                .navigationBarTitleDisplayMode(.large)
            }
            .toolbar {
                ToolbarItem {
                    Button {
                        showModal.toggle()
                    } label: {
                        Text("Add")
                    }
                }
            }
        }
        
    }
}
    
      

        #Preview {
            AddAlanguageView()
        }
    
