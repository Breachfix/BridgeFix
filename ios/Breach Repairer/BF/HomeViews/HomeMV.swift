//
//  HomeMV.swift
//  Breach Repairer
//
//  Created by Jack Ntihaniraho on 2022-05-08.
//

import Foundation


class HomeMV: ObservableObject{
    //String == Category
    @Published var movies: [String:[Movie]] = [:]
    
    public var allcategories: [String]{
         movies.keys.map({String($0)})
    }
    
    public var allGenre: [HomeGenre] = [.AllGenres, .Commandment, .Love, .Sabbath, .family, .Salvation, .inspirational ]

    public func getMovie(forCat cat: String, andHomeRow homeRow: HomeTopRow, andGenre genre: HomeGenre) -> [Movie] {
        
        switch homeRow {
        case .home:
            return movies[cat] ?? []
        case .movies:
            return (movies[cat] ?? []).filter({ ($0.movieType == .movie) && ($0.genre == genre) })
        case .tvShows:
            return (movies[cat] ?? []).filter({ ($0.movieType == .tvShow) && ($0.genre == genre) })
        case .myList:
            return movies[cat] ?? []
            // TODO: Setup MyList Properly
        }
    }
    
    init() {
        setupMovies()
    }
    
    func setupMovies(){
        movies["Trending"] = exampleMovies
        movies["Prophecy"] = exampleMovies.shuffled()
        movies["Sabbath"] = exampleMovies.reversed()
        movies["Advent Message"] = exampleMovies.reversed()
        movies["Health"] = exampleMovies.shuffled()
        movies["Three Angels"] = exampleMovies
        movies["Sanctuary"] = exampleMovies.reversed()
        movies["Repeat"] = exampleMovies.reversed()
        movies["Hymns"] = exampleMovies
        movies["Songs"] = exampleMovies.shuffled()
        movies["Love"] = exampleMovies
        movies["Breach Repaires"] = exampleMovies.reversed()
    }
}
