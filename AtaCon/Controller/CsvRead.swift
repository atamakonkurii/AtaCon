//
//  CsvRead.swift
//  AtaCon
//
//  Created by 太田和希 on 2021/03/17.
//

import Foundation
import UIKit

internal var sentenceArray:[Sentence] = makeData()

struct Sentence: Identifiable {
    let id: Int
    let sentenceJapanese: String
    let additionalSentenceJapanese: String
    let sentenceTaiwanese: String
    let additionalSentenceTaiwanese: String
    
}


func makeData() -> [Sentence]{
    
    var csvLines = [String]() //csvファイルを行ごとに分割
    var dataArray:[Sentence] = []
    
    //csvファイルの読み込み
    guard let path = Bundle.main.path(forResource:"sentence", ofType:"csv") else {
        print("読み込み失敗")
        return dataArray
    }
    
    //csvファイルを行ごとに分割
    //GoogleSpreadSheetで作成したcsvファイルは改行コードが一行ごとに入る仕様のようなので、削除し解決
    do {
        let csvString = try String(contentsOfFile: path, encoding: String.Encoding.utf8)
        csvLines = csvString.components(separatedBy: .newlines)
        csvLines = csvLines.filter{!$0.isEmpty} //csvの空白要素を削除
    } catch let error as NSError {
        print("エラー: \(error)")
    }
    
    for number in 0...csvLines.count - 1{
        
        let dataComponent = csvLines[number].components(separatedBy: ",")
        dataArray.append(Sentence(id:Int(dataComponent[0]) ?? number, sentenceJapanese: dataComponent[1], additionalSentenceJapanese: dataComponent[2], sentenceTaiwanese: dataComponent[3], additionalSentenceTaiwanese: dataComponent[4]))
        
    }
    
    return dataArray
    
}
