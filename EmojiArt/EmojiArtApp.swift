//
//  EmojiArtApp.swift
//  EmojiArt
//
//  Created by Warit Santaputra on 17/1/21.
//

import SwiftUI

@main
struct EmojiArtApp: App {
    @StateObject var document = EmojiArtDocument()
    
    var body: some Scene {
        WindowGroup {
            EmojiArtDocumentView(document: document)
        }
    }
}
