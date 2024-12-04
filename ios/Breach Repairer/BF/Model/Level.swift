//
//  Level.swift
//  Breach Repairer
//
//  Created by Jack Ntihaniraho on 2022-05-19.
//

import Foundation

enum Level: String{
    case basic, full
    
    var remove: Double{
        switch self{
        case.basic:
            return 0.5
        case.full:
            return 0
        }    }
}
