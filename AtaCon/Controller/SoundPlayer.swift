//
//  SoundPlayer.swift
//  AtaCon
//
//  Created by 太田和希 on 2021/03/17.
//

import UIKit
import AVFoundation

class SoundPlayer: NSObject {
    
    var soundPlayer: AVAudioPlayer!
    
    func japaneseSoundPlay(number: Int) {
        
        let soundNum: String = String(format: "%04d", number)
        
        let soundData = NSDataAsset(name: "J_\(soundNum)")!.data
        
        do {
            
            soundPlayer = try AVAudioPlayer(data: soundData)
            soundPlayer.play()
        
        }  catch {
            
            print("音声読み込みエラー")
            
        }
 
    }
    
    func taiwaneseSoundPlay(number: Int) {
        
        let soundNum: String = String(format: "%04d", number)
        
        let soundData = NSDataAsset(name: "T_\(soundNum)")!.data
        
        do {
            
            soundPlayer = try AVAudioPlayer(data: soundData)
            soundPlayer.play()
        
        }  catch {
            
            print("音声読み込みエラー")
            
        }
 
    }

}
