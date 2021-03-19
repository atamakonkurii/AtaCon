//
//  ContentView.swift
//  AtaCon
//
//  Created by 太田和希 on 2021/03/15.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            
            ZStack{
                
                Color(red: 0.5, green: 0.9, blue: 0.9)
                    .edgesIgnoringSafeArea(.all)
                  
                VStack {
                    
                    Spacer()
                    
                    VStack {
                        
                        Image("atama_concrete")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 80)
                        
                        Text("AtaCon")
                            .font(.largeTitle)
                            .fontWeight(.medium)
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.center)
                        
                        Text("日台言語学習App")
                            .fontWeight(.medium)
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.center)
                        
                    }
                    
                    Spacer()
                    
                    
                    NavigationLink(destination: StudyView(selectedTag: 1, mode: 1, title: "Random 10 sentences")){
                        Text("Random 10 sentences")
                            .frame(maxWidth: .infinity)
                            .frame(height: 50)
                            .font(.title)
                            .multilineTextAlignment(.center)
                            .background(Color.blue)
                            .foregroundColor(Color.white)
                            .cornerRadius(15, antialiased: true)
                            .padding([.top, .leading, .trailing])
                            .shadow(color: Color.black, radius: 3, x: 0, y: 0)
                    }
                    
                    NavigationLink(destination: ListView()){
                        Text("List of sentences")
                            .frame(maxWidth: .infinity)
                            .frame(height: 50)
                            .font(.title)
                            .multilineTextAlignment(.center)
                            .background(Color.blue)
                            .foregroundColor(Color.white)
                            .cornerRadius(15, antialiased: true)
                            .padding([.top, .leading, .trailing])
                            .shadow(color: Color.black, radius: 3, x: 0, y: 0)
                    }
                    
                    NavigationLink(destination: StudyView(selectedTag: 1, mode: 2, title: "Why I made this app")){
                        Text("Why I made this app")
                            .frame(maxWidth: .infinity)
                            .frame(height: 50)
                            .multilineTextAlignment(.center)
                            .background(Color.gray)
                            .foregroundColor(Color.white)
                            .cornerRadius(15, antialiased: true)
                            .padding(.all)
                            .shadow(color: Color.black, radius: 3, x: 0, y: 0)
                    }
                        
                    
                }
                
            }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
