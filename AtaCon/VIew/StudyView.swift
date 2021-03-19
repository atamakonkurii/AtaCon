//
//  StudyView.swift
//  AtaCon
//
//  Created by 太田和希 on 2021/03/16.
//

import SwiftUI

struct StudyView: View {
    
    @State var selectedTag:Int
    @State var star : Bool = false
    @State var mode: Int
    @State var title: String
    //@State var array: [Int] = []
    
    var body: some View {
        
        ZStack {
            Color(red: 0.5, green: 0.9, blue: 0.9)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                
                Spacer()
                
                if mode == 1 {//シャッフルの時のみシャッフル関数を実行
                    
                    let a = arrayShuffle()
                    
                    StudyViewSub(selectedTag: a.arrayFirst, mode: mode, arrayShuffle: a.arrayNum)
                        .navigationTitle(Text(title))
                        .navigationBarTitleDisplayMode(.inline)
                    
                }else {
                    
                    StudyViewSub(selectedTag: selectedTag, mode: mode, arrayShuffle: [])
                        .navigationTitle(Text(title))
                        .navigationBarTitleDisplayMode(.inline)
                }

                
            }
        }
    }
}

func arrayShuffle() -> (arrayNum: [Int], arrayFirst: Int) {
    var arrayNum:[Int] = []
    
    for i in 11..<sentenceArray.count {//最初の１０例文は自己紹介なので除外
        
        arrayNum.append(i)
        
    }
    
    arrayNum.shuffle()
    
    let array10:[Int] = arrayNum[0..<10] + []
    
    return (array10, arrayNum[0])
}


struct StudyView_Previews: PreviewProvider {
    static var previews: some View {
        StudyView(selectedTag: 30, mode: 1, title: "全文一覧")
    }
}
