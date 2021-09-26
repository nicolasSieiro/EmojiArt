//
//  EmojiArtApp.swift
//  EmojiArt
//
//  Created by Nicolas Sieiro on 26/09/2021.
//

import SwiftUI

@main
struct EmojiArtApp: App {
    let document = EmojiArtViewModel()
    
    var body: some Scene {
        WindowGroup {
            EmojiArtView(viewModel: document)
        }
    }
}
