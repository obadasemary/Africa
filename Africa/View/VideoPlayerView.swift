//
//  VideoPlayerView.swift
//  Africa
//
//  Created by Abdelrahman Mohamed on 3.10.2020.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    
    var body: some View {
        
        VideoPlayer(player: playVideo(fileName: "cheetah", fileFormat: "mp4"))
    }
}

// MARK: - PREVIEW

struct VideoPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        VideoPlayerView()
    }
}
