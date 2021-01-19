//
//  PaletteChoser.swift
//  EmojiArt
//
//  Created by Warit Santaputra on 19/1/21.
//

import SwiftUI

struct PaletteChoser: View {
    @ObservedObject var document: EmojiArtDocument
    @Binding var chosenPalette: String
    
    var body: some View {
        HStack {
            Stepper {
                chosenPalette = document.palette(after: chosenPalette)
            } onDecrement: {
                chosenPalette = document.palette(before: chosenPalette)
            } label: { EmptyView() }
            
            Text(document.paletteNames[chosenPalette] ?? "")
        }
        .fixedSize(horizontal: true, vertical: false)
    }
}

struct PaletteChoser_Previews: PreviewProvider {
    static var previews: some View {
        PaletteChoser(document: EmojiArtDocument(), chosenPalette: Binding.constant("Animals"))
    }
}
