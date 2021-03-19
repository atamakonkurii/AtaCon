//
//  AtaConApp.swift
//  AtaCon
//
//  Created by 太田和希 on 2021/03/15.
//

import SwiftUI

@main
struct AtaConApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(ShareData())
        }
    }
}
