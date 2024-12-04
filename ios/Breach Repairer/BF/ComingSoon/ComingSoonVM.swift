//
//  SearchBar.swift
//  Breach Repairer
//
//  Created by Jack Ntihaniraho on 2022-05-12.
//


import Foundation

class ComingSoonVM: ObservableObject {
    @Published var movies: [Movie] = []
    
    init() {
        self.movies = generateMovies(1)
    }
}
