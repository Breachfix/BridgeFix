//
//  SearchResultsGrid.swift
//  Breach Repairer
//
//  Created by Jack Ntihaniraho on 2022-05-12.
//

import SwiftUI

struct SearchResultsGrid: View {
    var movies: [Movie]
    
    @Binding var movieDetailToShow: Movie?
    
    let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        LazyVGrid(columns: columns, spacing: 10) {
            ForEach(movies, id: \.id) { movie in
                StandardHomeMovie(movie: movie)
                    .padding(.all)
                    .frame(width: 300/2, height: 180/2 )
                    .onTapGesture(perform: {
                        movieDetailToShow = movie
                    })
            }
        }
    }
}

struct SearchResultsGrid_Previews: PreviewProvider {
    static var previews: some View {
        SearchResultsGrid(movies: generateMovies(20), movieDetailToShow: .constant(nil))
    }
}
