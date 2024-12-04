//
//  TrailerList.swift
//  Breach Repairer
//
//  Created by Jack Ntihaniraho on 2022-05-10.
//

import SwiftUI

struct TrailerList: View {
    var trailers: [Trailer]
    
    let screen = UIScreen.main.bounds
    
    var body: some View {
        VStack(alignment: .leading){
            ForEach(trailers, content: { trailer in
                VStack{
                    VideoPreviewImage(imageURL: trailer.thumbnailImageURL, videoURL: trailer.videoURL, showingVideo: .constant(true))
                        
                        .frame(maxWidth: screen.width)
                    Text(trailer.name)
                        .font(.headline)
                }
                .foregroundColor(.white)
                .padding(.bottom, 10)
                
                
            })
        }
    }
}

struct TrailerList_Previews: PreviewProvider {
    static var previews: some View {
        ZStack{
            Color.black
                .ignoresSafeArea()
            TrailerList(trailers: exampleTrailers)
            
        }
    }
}
