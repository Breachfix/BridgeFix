//
//  StandardHomeMovie.swift
//  Breach Repairer
//
//  Created by Jack Ntihaniraho on 2022-05-08.
//

import SwiftUI
import KingfisherSwiftUI


struct StandardHomeMovie: View {
   var movie: Movie
    
    var body: some View {
        KFImage(movie.thumbnailURL)
            .resizable()
            .scaledToFit()
            //.frame(width: 200, height: 300 )
    }
}

struct StandardHomeMovie_Previews: PreviewProvider {
    static var previews: some View {
        StandardHomeMovie ( movie: exampleMovie1 )
            //.frame(width: 600, height: 600 )
    }
}
