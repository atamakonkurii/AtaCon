//
//  ListView.swift
//  AtaCon
//
//  Created by 太田和希 on 2021/03/16.
//

import SwiftUI

struct ListView: View {
    
    @EnvironmentObject var setData: ShareData
    @State var selectedListTag = 1
    
    var body: some View {
        TabView(selection: $selectedListTag) {
            List(1 ..< sentenceArray.count) {number in
                NavigationLink(destination: StudyView(selectedTag: number, mode: 0, title: "List of sentences").onAppear{
                        setData.xorToggleSwitch(value: false)
                }){
                    HStack {
                        Text(String(sentenceArray[number].id))
                        VStack {
                            HStack{
                                Text(sentenceArray[number].sentenceJapanese)
                                    .fontWeight(.regular)
                                    .multilineTextAlignment(.leading)
                                    .lineLimit(1)
                                
                                Spacer()
                            }
                            
                            HStack{
                                
                                Text(sentenceArray[number].additionalSentenceJapanese)
                                    .font(.caption)
                                    .foregroundColor(Color.gray)
                                    .multilineTextAlignment(.leading)
                                    .lineLimit(1)
                                
                                Spacer()
                            }
                        }
                    }
                    
                }
            }
            .tabItem {
                Image(systemName: "j.square.fill")
                Text("Japanese")
            }
            .tag(1)
            
            List(1 ..< sentenceArray.count) {number in
                VStack {
                    
                    NavigationLink(destination: StudyView(selectedTag: number, mode: 0, title: "List of sentences").onAppear{
                            setData.xorToggleSwitch(value: true)
                    }){
                    HStack {
                        Text(String(sentenceArray[number].id))
                        VStack {
                            
                            HStack{
                                
                                Text(sentenceArray[number].sentenceTaiwanese)
                                    .fontWeight(.regular)
                                    .multilineTextAlignment(.leading)
                                    .lineLimit(1)
                                
                                Spacer()
                            }
                            
                            HStack{
                                
                                Text(sentenceArray[number].additionalSentenceTaiwanese)
                                    .font(.caption)
                                    .foregroundColor(Color.gray)
                                    .multilineTextAlignment(.leading)
                                    .lineLimit(1)
                                
                                Spacer()
                            }
                        }
                    }

                }
            }
                

            }
            .tabItem {
                Image(systemName: "t.square.fill")
                Text("Taiwanese")
                
            }
            .tag(2)
        }
        
        
        
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
