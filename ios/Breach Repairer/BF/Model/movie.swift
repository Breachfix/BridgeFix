//
//  movie.swift
//  Breach Repairer
//
//  Created by Jack Ntihaniraho on 2022-05-08.
//

import Foundation

struct Movie: Identifiable {
    var id: String //= UUID().uuidString
    var name: String
    var thumbnailURL: URL
    
    var categories: [String]
    var genre: HomeGenre = .AllGenres
    
    // MovieDetailView
    var year: Int
    var rating: String
    var numberOfSeasons: Int?
    var resolution: String
    
    //Personalization
    var currentEpisode: CurrentEpisodeInfo?
    
    var defaultEpisodInfo: CurrentEpisodeInfo
    var creators: String
    var cast: String
    
    var moreLikeThisMovies: [Movie]
    
    
    var episodes: [Episode]?
    
    var movieType: MovieType{
        return episodes == nil ? .movie : .tvShow
    }
    
    var promotionHeadline: String?
    
    var trailers: [Trailer]
    
    var previewImageName: String
    
    var previewVideoURL: String
    
    var numberOfSeasonsDisplay: String {
        if let num = numberOfSeasons{
            if num == 1 {
                return "1 Season"
            } else {
                return "\(num) Seasons"
            }
        }
        return ""
    }
    var episodeInfoDisplay: String{
        if let current = currentEpisode {
            return "S\(current.season):E\(current.episode) \(current.episodeName)"
        }else{
            return "S\(defaultEpisodInfo.season):E\(defaultEpisodInfo.episode) \(defaultEpisodInfo.episodeName)"
        }
    }
    var episodeDescriptionDisplay: String{
        if let current = currentEpisode{
            return current.description
        } else{
            return defaultEpisodInfo.description
        }
    }
}

struct CurrentEpisodeInfo: Hashable, Equatable {
    var episodeName: String
    var description: String
    var season: Int
    var episode: Int
}

enum MovieType{
    case movie
    case tvShow
}
