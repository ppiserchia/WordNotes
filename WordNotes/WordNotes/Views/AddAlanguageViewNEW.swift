//
//  AddALanguageViewNEW
//  WordNotes
//
//  Created by Pasquale Piserchia on 11/12/24.
//

import SwiftUI

struct AddaLanguageView: View {
    @State var languageVM = LanguageViewModel() // Use @State for observable objects
    @State private var selectedLanguage: String? // Track the selected language
    @State private var showModal: Bool = false // Show the sheet

    
//    var add: (_ language: LanguageViewModel.Language) -> Void
        
    var body: some View {
        NavigationStack {
            List {
                ForEach(languageVM.languageExisting) { language in
                    HStack {
                        Text(language.language)
                        Text(language.emoji)
                        if selectedLanguage == language.language {
                            
                            Spacer()
                            Image(systemName: "checkmark")
                                .foregroundColor(.blue)
                        }
                    }
                    .contentShape(Rectangle()) // Make the row tappable
                    .onTapGesture {
                        selectedLanguage = language.language // Update the selected language
                    }
                }
            }
            .navigationTitle("Add a language")
            .toolbar {
                ToolbarItem {
                    Button {
                        //                        let newLanguage = Language (language: language, emoji: emoji)
                        //                        add(newLearner)
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
    AddaLanguageView()
}

