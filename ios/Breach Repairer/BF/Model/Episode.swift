//
//  File.swift
//  Breach Repairer
//
//  Created by Jack Ntihaniraho on 2022-05-09.
//

import Foundation
struct Episode: Identifiable {
    var id = UUID().uuidString
    
    
    var name: String
    var season: Int
    var episodeNumber: Int
    var thumbnailImageURLString: String
    var description:String
    var length: Int
    
    var videoURL: String
    
    var thumbnilURL: URL{
        return URL(string: thumbnailImageURLString)!
    }
    
}
