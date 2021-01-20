//
//  EmojiArtApp.swift
//  EmojiArt
//
//  Created by Warit Santaputra on 17/1/21.
//

import SwiftUI

@main
struct EmojiArtApp: App {
    @StateObject var store = EmojiArtDocumentStore(named: "Emoji Art")
    
    var body: some Scene {
        WindowGroup {
            EmojiArtDocumentChooser().environmentObject(store)
        }
    }
}
