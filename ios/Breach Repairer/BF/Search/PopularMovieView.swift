//
//  PopularMovieView.swift
//  Breach Repairer
//
//  Created by Jack Ntihaniraho on 2022-05-12.
//

import SwiftUI
import KingfisherSwiftUI
import AVKit

struct PopularMovieView: View {
   
    var movie: Movie
    @State private var isEditing = true
    
  
    
    @Binding var movieDetailToShow: Movie?
    
    
    
    var body: some View {
        GeometryReader { proxy in
            HStack {
                KFImage(movie.thumbnailURL)
                    .resizable()
                    .frame(width: proxy.size.width / 3)
                    .padding(.leading, 3)
                
                Text(movie.name)
                
                Spacer()
                
                Button(action: {
                 
                   //
                    
                }, label: {
                    Image(systemName: "arrowtriangle.right.fill")
                })
                .padding(.trailing, 20)
            }
            .foregroundColor(.white)
            .onTapGesture(perform: {
                self.movieDetailToShow = movie
            })
        }
    }
}

struct PopularMovieView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            PopularMovieView(movie: exampleMovie1, movieDetailToShow: .constant(nil))
                .frame(height: 75)
        }
    }
}
