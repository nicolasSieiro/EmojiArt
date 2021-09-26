//
//  EmojiArtView.swift
//  EmojiArt
//
//  Created by Nicolas Sieiro on 26/09/2021.
//

import SwiftUI

struct EmojiArtView: View {
    @ObservedObject var viewModel: EmojiArtViewModel
    
    var body: some View {
        VStack(spacing: 0) {
            documentBody
            palette
        }
    }
    
    var documentBody: some View {
        Color.yellow
    }
    
    var palette: some View {
        ScrollingEmojisView(emojis: testEmojis)
    }
    
    let testEmojis = "👹😪🤕💩👾😹🤠👻😈"
}

struct ScrollingEmojisView: View {
    let emojis: String
    
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                ForEach(emojis.map { String($0) }, id: \.self) { emoji in
                    Text(emoji)
                }
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiArtView(viewModel: EmojiArtViewModel())
    }
}
