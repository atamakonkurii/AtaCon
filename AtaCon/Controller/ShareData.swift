//
//  ShareData.swift
//  AtaCon
//
//  Created by 太田和希 on 2021/03/19.
//

import Foundation
import UIKit

class ShareData: ObservableObject {
    
    @Published var languageSelectedTag = false
    
    func toggleSwitch(){
        
        languageSelectedTag.toggle()
        
    }
    
    func xorToggleSwitch (value: Bool){
        
        if value != languageSelectedTag {
            
            languageSelectedTag.toggle()
            
        }
        
    }
    
}
