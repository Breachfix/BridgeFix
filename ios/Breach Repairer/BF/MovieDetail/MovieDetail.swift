//
//  MovieDetail.swift
//  Breach Repairer
//
//  Created by Jack Ntihaniraho on 2022-05-09.
//

import SwiftUI
import AVKit

struct MovieDetail: View {
    @State private var showingVideoPlayer = false
    @State var height : CGFloat = 0
    var movie: Movie
    
    let screen = UIScreen.main.bounds
    
    @State private var showSeasonPicker = false
    @State private var selectedSeason = 1
   
    
    @Binding var movieDetailToShow: Movie?
    
    var player: AVPlayer {
        AVPlayer(url: URL(string: "https://www.radiantmediaplayer.com/media/big-buck-bunny-360p.mp4")!)
    }
    
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            
            VStack {
                HStack {
                    Spacer()
                    
                    Button(action: {
                        movieDetailToShow = nil
                    }, label: {
                        Image(systemName: "xmark.circle")
                            .font(.system(size: 28))
                    })
                }
                .padding(.horizontal, 22)
                
                ScrollView(.vertical, showsIndicators: false) {
                    VStack {
                        
                        StandardHomeMovie(movie: movie)
                            .frame(width: 328, height: 184)
                            
                        
                        MovieInfoSubheadline(movie: movie)
                            .padding(.top, 12)
                        
                        if movie.promotionHeadline != nil {
                            Text(movie.promotionHeadline!)
                                .bold()
                                .font(.headline)
                        }
                       
                        PlayButton(text: "Play", imageName: "play.fill", backgroundColor: .red) {
                            showingVideoPlayer = true
                                
                        }
                        .sheet(isPresented: $showingVideoPlayer, content: {
                            ZStack {
                                Color.graySearchBackground
                                HStack {
                                    Spacer()
                                    
                                    GeometryReader{ geo in
                            VideoView(videoID: movie.previewVideoURL).frame(width: geo.size.height / 0.8)
                                            .frame( minHeight: 0, maxHeight: UIScreen.main.bounds.height * 4)
                                            .cornerRadius(20)
                                            .padding(.all, 20)
                                            .gesture(DragGesture()
                                            
                                                .onChanged({(value) in
                                                    self.height += value.translation.height / 10
                                                })
                                                    .onEnded({(value) in
                                                        if self.height > geo.size.height / 2 - 100{
                                                            self.height = 1500
                                                        }
                                                        if -self.height > geo.size.height / 2 - 100{
                                                            self.height = -1500
                                                        }
                                                    })
                                            ).offset( y: self.height)
                                        
                                            
                                    }.animation(.spring(), value: 1)
                                        .frame( minHeight: 0, maxHeight: UIScreen.main.bounds.height * 0.3)
                                        .cornerRadius(12)
                                    .padding(.horizontal, 24)
                                }
                                Spacer()
                                Spacer()
                            }
                        }).scaledToFit()
                            .edgesIgnoringSafeArea(.all)
                        .padding(.vertical)
                        
                        CurrentEpisodeInformation(movie: movie)
                        
                        CastInfo(movie: movie)
                        
                        HStack(spacing: 60) {
                            SmallVerticalButton(text: "My List", isOnImage: "checkmark", isOffImage: "plus", isOn: true) {
                                //
                            }
                            
                            SmallVerticalButton(text: "Rate", isOnImage: "hand.thumbsup.fill", isOffImage: "hand.thumbsup", isOn: true) {
                                //
                            }
                            
                            SmallVerticalButton(text: "Share", isOnImage: "paperplane.fill", isOffImage: "paperplane.fill", isOn: true) {
                                //
                            }
                            
                            Spacer()
                        }
                        .padding(.leading, 20)
                        
                        
                        CustomTabSwitcher(tabs: [.episodes, .trailers, .more], movie: movie, showSeasinPicker: $showSeasonPicker, selectedSeason: $selectedSeason)
                        
                        
                    }
                    .padding(.horizontal, 10)
                }
                Spacer()
            }
            .foregroundColor(.white)
            
            if showSeasonPicker {
                Group {
                    Color.black.opacity(0.9)
                    
                    VStack(spacing: 40) {
                        Spacer()
                        
                        ForEach(0..<(movie.numberOfSeasons ?? 0), id:\.self) { season in
                            Button(action: {
                                self.selectedSeason = season + 1
                                self.showSeasonPicker = false
                            }, label: {
                                Text("Season \(season + 1)")
                                    .foregroundColor(selectedSeason == season + 1 ? .white : .gray)
                                    .bold()
                                    .font(selectedSeason == season + 1 ? .title : .title2)
                            })
                        }
                        
                        Spacer()
                        
                        Button(action: {
                            self.showSeasonPicker = false
                        }, label: {
                            Image(systemName: "x.circle.fill")
                                .foregroundColor(.white)
                                .font(.system(size: 40))
                                .scaleEffect(x: 1.1)
                        })
                        .padding(.bottom, 30)
                    }
                }
                .edgesIgnoringSafeArea(.all)
            }
        }
    }
}


struct MovieDetail_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetail(movie: generateMovies(1).first!, movieDetailToShow: .constant(nil))
    }
}



struct MovieInfoSubheadline: View {
    var movie: Movie
    
    var body: some View {
        HStack(spacing: 20) {
            Image(systemName: "hand.thumbsup.fill")
                .foregroundColor(.white)
            
            Text(String(movie.year))
            
            RatingView(rating: movie.rating)
            
            Text(movie.numberOfSeasonsDisplay)
            ResolutionView(resolution: movie.resolution)
        }
        .foregroundColor(.gray)
        .padding(.vertical, 6)
    }
}

struct RatingView: View {
    var rating: String
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.gray)
            
            Text(rating)
                .foregroundColor(.white)
                .font(.system(size: 12))
                .bold()
        }
        .frame(width: 50, height: 20)
    }
}

struct ResolutionView: View {
    var resolution: String
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.gray)
            
            
            Rectangle()
                .foregroundColor(.black)
                .frame(width: 26, height: 17)
            
            
            Text(resolution)
                .foregroundColor(.white)
                .font(.system(size: 12))
                .bold()
        }
        .frame(width: 30, height: 20)
        .cornerRadius(4)
    }
}

struct CastInfo: View {
    var movie: Movie
    
    var body: some View {
        VStack(spacing: 3) {
            HStack {
                Text("Cast: \(movie.cast)")
                
                Spacer()
            }
            
            HStack {
                Text("Creators: \(movie.creators)")
                
                Spacer()
            }
        }
        .font(.caption)
        .foregroundColor(.gray)
        .padding(.vertical, 10)
    }
}

struct CurrentEpisodeInformation: View {
    var movie: Movie
    
    var body: some View {
        Group {
            HStack {
                Text(movie.episodeInfoDisplay)
                    .bold()
                
                Spacer()
            }
            .padding(.vertical, 4)
            
            HStack {
                Text(movie.episodeDescriptionDisplay)
                    .font(.subheadline)
                
                Spacer()
            }
        }
    }
}
