//
//  DetailedWordView.swift
//  WordNotes
//
//  Created by Pasquale Piserchia on 17/12/24.
//
import SwiftUI

struct DetailedWordView: View {
    @EnvironmentObject var languageVM: LanguageViewModel
    @EnvironmentObject var wordVM: WordViewModel
    let language: Language
    let word: Word
    
    var body: some View {
        NavigationStack {
            List {
                Section(header: Text("Word")) {
                Text("\(word.word)")
                    .multilineTextAlignment((.center))
                    .bold()
                    .font(.title3)
//                    .font(.title)
                    
            }
                
                Section(header: Text("Transliteration")) {
                                    
        if !word.eventualTransliteration.isEmpty {
                        Text("\(word.eventualTransliteration)")
//                            .font(.subheadline)
//                            .foregroundColor(.gray)
                    }
                }
                
                Section(header: Text("Translation")) {
                    
                    Text("\(word.translation)")
//                        .font(.title3)
                }
                
                Section(header: Text("Meaning")) {
                    
                    Text("\(word.meaning)")
                        .padding(.top, 10)
                    
//                    Text(word.meaning)
//                        .multilineTextAlignment(.leading)
//                        .padding()
                    
                    
                }
            }
            .navigationTitle("Word Details")
        }
    }
}

#Preview {
    let previewLanguage = Language(language: "Russian", emoji: "🇷🇺")
    let previewWord = Word(
        word: "Лягушка",
        eventualTransliteration: "Ljagushka",
        translation: "Frog",
        meaning: "Ljagushka is a Russian word for a frog.",
        language: previewLanguage
    )
    
    return DetailedWordView(language: previewLanguage, word: previewWord)
        .environmentObject(LanguageViewModel())
        .environmentObject(WordViewModel())
}
