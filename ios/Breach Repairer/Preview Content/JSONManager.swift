//
//  JSONManager.swift
//  Breach Repairer
//
//  Created by Jack Ntihaniraho on 2022-04-09.
//

import Foundation




    


    
    struct Manuscript: Codable {
        let copy, date, text, details: String
        static let allManuscripts: [Manuscript] = Bundle.main.decode(file: "pure_manuscripts.json")
        static let sampleManuscript: Manuscript = allManuscripts[0]
        
        

        enum CodingKeys: String, CodingKey {
            case copy = "Copy"
            case date = "Date"
            case text = "Text"
            case details = "Details"

        }
    }



struct StrongDelusion: Codable {
    let verse, inKJV, inJamesStrongSJHenryThayerSASV, purpleDescription: String
    static let allStrongDelusions: [StrongDelusion] = Bundle.main.decode(file: "Strong_Delusion.json")
    static let sampleStrongDelusion: StrongDelusion = allStrongDelusions[0]

    enum CodingKeys: String, CodingKey {
        case verse = "Verse"
        case inKJV = "In KJV"
        case inJamesStrongSJHenryThayerSASV = "In James Strong's & J. Henry Thayer's ASV"
        case purpleDescription = "description"
    }
}


struct BreachedVerse: Codable {
    var chapter, verse, bookName, kjv: String
    var niv, error, danger, evidence: String
    var explanation, nkjv, current: String
    var suggestion: String
    var batch: Int
    static let allBreachedVerses: [BreachedVerse] = Bundle.main.decode(file: "breached.verses.json")
    static let sampleBreachedVerse: BreachedVerse = allBreachedVerses[0]


    enum CodingKeys: String, CodingKey {
        case chapter = "Chapter"
        case verse = "Verse"
        case bookName = "BookName"
        case kjv = "Kjv"
        case niv = "Niv"
        case error = "Error"
        case danger = "Danger"
        case evidence = "Evidence"
        case explanation = "Explanation"
        case batch = "Batch"
        case nkjv = "Nkjv"
        case current = "Current"
        case suggestion = "Suggestion"
    }
}



extension Bundle{
    func decode<T: Decodable>(file: String) -> T {
        guard let url = self.url(forResource: file, withExtension: nil) else{
            fatalError("Could not find \(file) in the project!")
        }
        
        guard let data = try? Data(contentsOf: url) else{
            fatalError("Could not load \(file) in the project!")
            
        }
        
        let decoder = JSONDecoder()
        
        guard let loadedData = try? decoder.decode(T.self, from: data) else{
            fatalError("Could not decode \(file) in the project!")
            
        }
        
        return loadedData
    }
}


