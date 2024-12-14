//
//  AddALanguageViewNEW
//  WordNotes
//
//  Created by Pasquale Piserchia on 11/12/24.
//

import SwiftUI
//
//struct AddaLanguageView: View {
//    @ObservedObject var languageVM = LanguageViewModel() // Use @State for observable objects
//    @Binding var showModal: Bool // Show the sheet
//    var add: (_ language: LanguageViewModel) -> Void
//
//    @State private var selectedLanguage: String? // Track the selected language
//    @State private var emoji: String?
//    
//    
//    var body: some View {
//        //NavigationStack is used for letting work the .navigationTitle modifier
//        NavigationStack {
//            List {
//                ForEach(languageVM.language) { language in
//                    HStack {
//                        Text(language.language)
//                        Text(language.emoji)
//                        if selectedLanguage == language.Language {
//                            
//                            Spacer()
//                            Image(systemName: "checkmark")
//                                .foregroundColor(.blue)
//                        }
//                    }
//                    .contentShape(Rectangle()) // Make the item tappable
//                    .onTapGesture {
//                        selectedLanguage = language.language // Update the selected language
//                    }
//                }
//            }
//            
//            //Add a title to the view
//            .navigationTitle("Add a language")
//            .toolbar {
//                ToolbarItem(placement: .topBarLeading) {
//                    Button("Cancel") {
//                        showModal.toggle()
//                    }
//                }
//            }
//            .toolbar {
//                ToolbarItem(placement: .topBarTrailing) {
//                    Button("Add") {
//                        let newLanguage = Language(language:, emoji: emoji)
//                        add(newLanguage)
//                        showModal.toggle()
//                    }
//                }
//            }
//         }
//      }
//  }
//
//#Preview {
//    AddaLanguageView()
//}
