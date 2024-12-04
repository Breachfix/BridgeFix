//
//  Trailer.swift
//  Breach Repairer
//
//  Created by Jack Ntihaniraho on 2022-05-10.
//

import Foundation

struct Trailer: Identifiable, Hashable{
    var id: String = UUID().uuidString
    var name: String
    var videoURL: String
    var thumbnailImageURL: URL
}

