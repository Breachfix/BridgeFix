//
//  TopMoviePreview.swift
//  Breach Repairer
//
//  Created by Jack Ntihaniraho on 2022-05-08.
//

import SwiftUI
import KingfisherSwiftUI
import AVFoundation
import AVKit


struct TopMoviePreview: View {
    var movie: Movie
    var videoPlayerView: VideoPlayerView
    @State var height : CGFloat = 0
    @State private var showingVideoPlayer = false
    @State var player = AVPlayer()
    @State private var showingVideo: Bool = false
    
    
    
    
    func isCategoryLast(_ cat: String) -> Bool {
        let catCount = movie.categories.count
        
        if let index = movie.categories.firstIndex(of: cat) {
            if index + 1 != catCount {
            return false
            
           }
        }
         return true
    }
    var body: some View {
        ZStack{
            
            
            KFImage(movie.thumbnailURL)
                .resizable()
                
                .padding(.horizontal)
                .scaledToFit()
                .clipped()
                .padding(.top, 100)
                .padding(.bottom, 120)
                
            
            Spacer()
            
            VStack{
                Spacer()
                HStack{
                    ForEach(movie.categories, id: \.self ) { category in
                        HStack{
                        Text(category)
                            
                            if !isCategoryLast(category){
                                
                                Image(systemName: "circle.fill")
                                        .foregroundColor(.blue)
                                        .font(.system(size: 3))
                            }
                        }
                  }
                }
                HStack{
                    Spacer()
                    SmallVerticalButton(text: "My List", isOnImage: "checkmark", isOffImage: "plus", isOn: true){
                        //
                    }
                    Spacer()
                    
                    PlayButton(text: "Play", imageName: "play.fill" ){
                        showingVideoPlayer = true
                            
                    }
                    .sheet(isPresented: $showingVideoPlayer, content: {
                        
                        ZStack {
                            Color.graySearchBackground
                            HStack {
                                Spacer()
                                
                                GeometryReader{ geo in
                                    
                                    VideoView(videoID: movie.previewVideoURL).frame(width: geo.size.height / 0.8.self, height: 307)
                                        .frame( minHeight: 100, maxHeight: UIScreen.main.bounds.height * 10)
                                        .cornerRadius(20)
                                        .padding(.all, 20)
                                        .gesture(DragGesture()
                                        
                                            .onChanged({(value) in
                                                self.height += value.translation.height / 10
                                            })
                                                .onEnded({(value) in
                                                    if self.height > geo.size.height / 2 - 400{
                                                        self.height = 1500
                                                    }
                                                    if -self.height > geo.size.height / 2 - 400{
                                                        self.height = -1500
                                                    }
                                                })
                                        ).offset( y: self.height)
                                    
                                    
                                }.animation(.spring(), value: 1)
                                    .frame( minHeight: 0, maxHeight: UIScreen.main.bounds.height * 0.3)
                                    .cornerRadius(12)
                                .padding(.all, 2)
                            }
                           
                            Spacer()
                            Spacer()

                        }
                       
                        
                            
                    }
//                        VideoView(videoID: movie.previewVideoURL).frame( minHeight: 0, maxHeight: UIScreen.main.bounds.height * 0.46)
//                            .cornerRadius(7)
//                            .padding(.horizontal, 7)
//                            .padding(.top, -370)
                           ).scaledToFit()
                        .edgesIgnoringSafeArea(.all)
                    .frame(width: 120)
                   
                    
                    
                    Spacer()
                    SmallVerticalButton(text: "Info", isOnImage: "info.circle", isOffImage: "info.circle", isOn: true){
                        //
                    }
                    Spacer()
                    
                }
                .padding(.vertical, 14)
            }
            .background(LinearGradient.blackOpacityGradient
                .padding(.top, 120)
               
            )
        }
        
        
    }
    

struct TopMoviePreview_Previews: PreviewProvider {
    static var previews: some View {
        TopMoviePreview(movie: exampleMovie9, videoPlayerView:  VideoPlayerView(showingVideo: .constant(true), player: AVPlayer() , videoURL: exampleVideoURL))
          
    }
}
}
