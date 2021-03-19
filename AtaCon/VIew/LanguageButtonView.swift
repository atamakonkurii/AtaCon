//
//  LanguageButtonView.swift
//  AtaCon
//
//  Created by 太田和希 on 2021/03/18.
//

import SwiftUI
import AVFoundation

private let soundPlayer = SoundPlayer()

struct JapaneseButtonView: View {
    
    var number: Int
    @State var hatenaView :Bool
    
    var body: some View {
        
        Button(action: {
            
            soundPlayer.japaneseSoundPlay(number: number)
            hatenaView = true
            
        }) {
            VStack {
                
                if hatenaView == false {
                    
                    HStack {
                        
                        Spacer()
                        Text("?")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(Color.black)
                        Spacer()
                        
                    }
                    
                } else {
                    
                    HStack {
                        
                        Text(sentenceArray[number].sentenceJapanese)
                            .font(.title)
                            .fontWeight(.heavy)
                            .foregroundColor(Color.black)
                            .multilineTextAlignment(.leading)
                        
                        Spacer()
                    }
                    
                    
                    HStack {
                        
                        Text(sentenceArray[number].additionalSentenceJapanese)
                            .font(.caption)
                            .foregroundColor(Color.gray)
                            .multilineTextAlignment(.leading)
                        
                        Spacer()
                    }
                    
                }
            }
        }
        .frame(width: .infinity)
        .padding(.horizontal)
        
    }
}

struct TaiwaneseButtonView: View {
    
    var number: Int
    @State var hatenaView :Bool
    
    var body: some View {
        
        Button(action: {
            
            soundPlayer.taiwaneseSoundPlay(number: number)
            hatenaView = true
            
        }) {
            VStack {
                
                if hatenaView == false {
                    
                    HStack {
                        
                        Spacer()
                        Text("?")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(Color.black)
                        Spacer()
                        
                    }
                    
                    
                } else {
                    
                    HStack {
                        
                        Text(sentenceArray[number].sentenceTaiwanese)
                            .font(.title)
                            .fontWeight(.heavy)
                            .foregroundColor(Color.black)
                            .multilineTextAlignment(.leading)
                        
                        Spacer()
                    }
                    
                    HStack {
                        
                        Text(sentenceArray[number].additionalSentenceTaiwanese)
                            .font(.caption)
                            .foregroundColor(Color.gray)
                            .multilineTextAlignment(.leading)
                        
                        Spacer()
                    }
                    
                }
                
                
            }
        }
        .frame(width: .infinity)
        .padding(.horizontal)
        
    }
}
