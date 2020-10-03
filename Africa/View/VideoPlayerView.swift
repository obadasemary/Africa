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
    
    var videoSelected: String
    var videoTitle: String
    
    // MARK: - BODY
    
    var body: some View {
        
        VStack {
            VideoPlayer(player: playVideo(fileName: videoSelected, fileFormat: "mp4")) {
//                Text(videoTitle)
//                    .font(.largeTitle)
//                    .fontWeight(.heavy)
//                    .foregroundColor(.accentColor)
//                    .offset(x: 150, y: 100)
            }
            .overlay(
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32, height: 32)
                    .padding(.top, 6)
                    .padding(.horizontal, 8)
                , alignment: .topLeading
            )
        }
        .accentColor(.accentColor)
        .navigationBarTitle(videoTitle, displayMode: .inline)
    }
}

// MARK: - PREVIEW

struct VideoPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            VideoPlayerView(videoSelected: "lion", videoTitle: "Lion")
        }
    }
}
