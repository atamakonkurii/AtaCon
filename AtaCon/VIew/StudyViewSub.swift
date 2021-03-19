//
//  StudyViewSub.swift
//  AtaCon
//
//  Created by 太田和希 on 2021/03/16.
//

import SwiftUI

struct StudyViewSub: View {
    
    @State var selectedTag: Int
    @State var mode: Int
    var arrayShuffle:[Int]
    
    var body: some View {
        
        ZStack {
            
            RoundedRectangle(cornerRadius: 30)
                .fill(Color(red: 229/255, green: 229/255, blue: 229/255))
                .shadow(color: Color.black, radius: 2, x: 0, y: 0)
                .padding([.leading, .bottom, .trailing])
            
            
            if mode == 0 {//一覧表示
                
                TabView(selection: $selectedTag) {
                    
                    ForEach((1...(sentenceArray.count - 1)), id: \.self) { num in
                        
                        StudyViewSubSub(mode: mode, number: num).tag(num)
                        
                    }
                    
                }
                .tabViewStyle(PageTabViewStyle())
                .padding()
                
            }else if mode == 1 {//シャッフル表示
                
                TabView(selection: $selectedTag) {
                    
                    ForEach((arrayShuffle), id: \.self) { num in
                        
                        StudyViewSubSub(mode: mode, number: num).tag(num)
                        
                    }
                    
                }
                .tabViewStyle(PageTabViewStyle())
                .padding()
                
                
            }else {//なぜこのアプリを作ったか
                
                TabView(selection: $selectedTag) {
                    
                    ForEach((1...10), id: \.self) { num in
                        
                        StudyViewSubSub(mode: mode, number: num).tag(num)
                        
                    }
                    
                }
                .tabViewStyle(PageTabViewStyle())
                .padding()
                
            }
            
            
        }
        
        
    }
}



struct StudyViewSub_Previews: PreviewProvider {
    static var previews: some View {
        StudyViewSub(selectedTag: 30, mode: 1, arrayShuffle: [])
    }
}
