//
//  particle.swift
//  rainbow
//
//  Created by Jack Ntihaniraho on 2022-01-28.
//

import Foundation

struct Particle: Hashable{
    let x:Double
    let y: Double
    let creationDate = Date.timeIntervalSinceReferenceDate
    let hue: Double
}
