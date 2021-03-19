//
//  StudyViewSubSub.swift
//  AtaCon
//
//  Created by 太田和希 on 2021/03/17.
//

import SwiftUI

struct StudyViewSubSub: View {
    @EnvironmentObject var setData: ShareData
    @State var mode: Int
    @State var star: Bool = false
    var number: Int
    
    var body: some View {
        
        VStack{
            
            HStack {
                Button(action: {
                    
                    setData.toggleSwitch()
                    
                }) {
                    
                    if setData.languageSelectedTag  == false {
                        
                        Image("flag1")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 40)
                            .padding([.top, .leading])
                            .shadow(color: Color.black, radius: 1, x: 0, y: 0)
                        
                    } else {
                        
                        Image("flag2")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 40)
                            .padding([.top, .leading])
                            .shadow(color: Color.black, radius: 1, x: 0, y: 0)
                        
                    }
                    
                    
                }
                
                
                Spacer()
                
                if mode == 0 {//一覧表示
                    
                    Text(String(number) + "/" + String(sentenceArray.count - 1))
                        .font(.body)
                        .fontWeight(.bold)
                        .foregroundColor(Color.gray)
                        .multilineTextAlignment(.center)
                    
                } else if mode == 1 {//シャッフル表示
                    
//                    Text(String(number) + "/10")
//                        .font(.body)
//                        .fontWeight(.bold)
//                        .foregroundColor(Color.gray)
//                        .multilineTextAlignment(.center)
                    
                    Text("")
                    
                } else {
                    
                    Text(String(number) + "/10")
                        .font(.body)
                        .fontWeight(.bold)
                        .foregroundColor(Color.gray)
                        .multilineTextAlignment(.center)
                    
                }
                
                Spacer()
                FavoriteButton(isSet: $star)
                    .frame(width: 40)
                    .padding(.trailing)
            }
            
            
            
            Spacer()
            
            if setData.languageSelectedTag  == false {
                
                JapaneseButtonView(number: number, hatenaView: true)
                
            }else {
                
                TaiwaneseButtonView(number: number, hatenaView: true)
                
            }
          
            Spacer()
            
            if setData.languageSelectedTag  == false {
                
                TaiwaneseButtonView(number: number, hatenaView: false)
                
            }else {
                
                JapaneseButtonView(number: number, hatenaView: false)
                
            }

            Spacer()
        }
            
    }
}



struct StudyViewSubSub_Previews: PreviewProvider {
    static var previews: some View {
        StudyViewSubSub(mode: 1, number: 30)
    }
}
