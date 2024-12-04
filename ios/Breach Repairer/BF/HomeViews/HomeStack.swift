//
//  HomeStack.swift
//  Breach Repairer
//
//  Created by Jack Ntihaniraho on 2022-05-11.
//

import Foundation
import SwiftUI

struct HomeStack: View {
    var vm: HomeMV
    
    var topRowSelection: HomeTopRow
    var selectedGenre: HomeGenre
    
    @Binding var movieDetailToShow: Movie?
    
    var body: some View {
        ForEach(vm.allcategories, id: \.self ) { category in
            VStack{
                HStack{
                    Text(category)
                        .font(.title3)
                        .bold()
                    Spacer()
                    
                }
                
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHStack{
                        ForEach(vm.getMovie(forCat: category, andHomeRow: topRowSelection, andGenre: selectedGenre)) { movie in
                            StandardHomeMovie(movie: movie)
                                .frame(width: 300/2, height: 180/2 )
//                                .padding(.horizontal)
                                .onTapGesture(perform: {
                                    movieDetailToShow = movie
                                })
                            
                        }
                        
                    }
                    
                }
            }
            .padding(.leading, 6)
            
        }
    }
}
struct HomeStack_Previews: PreviewProvider {
    static var previews: some View {
        
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            ScrollView {
                HomeStack(vm: HomeMV(), topRowSelection: .home, selectedGenre: .AllGenres, movieDetailToShow: .constant(nil))
            }
        }.foregroundColor(.white)
    }
}
