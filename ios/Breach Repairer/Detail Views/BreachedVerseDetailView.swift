//
//  BreachedVerseDetailView.swift
//  Breach Repairer
//
//  Created by Jack Ntihaniraho on 2022-04-10.
//

import SwiftUI

struct BreachedVerseDetailView: View {
    var breachedVerse: BreachedVerse
    var body: some View {
        ZStack{
            AngularGradient(gradient: Gradient(colors: [.red, .yellow, .green, .blue, .purple, .red]), center: .topTrailing)
                .ignoresSafeArea()
            
        VStack(alignment: .leading)
        {
            Text( "\(breachedVerse.bookName) \(breachedVerse.chapter): \(breachedVerse.verse) \n").bold().foregroundColor(.white)
            Text( "KJV: \n \(breachedVerse.kjv)\n")
            Text( "Erronious: \n \(breachedVerse.error)\n").monospacedDigit()
            Text( "Modern Version: \n \(breachedVerse.niv) \(breachedVerse.nkjv)\n").foregroundColor(.red)
            Text( "Evidence: \n \(breachedVerse.evidence)\n").foregroundColor(.blue)
            Text( "Explaination: \n \(breachedVerse.explanation)\n").foregroundColor(.secondary)
            Text( "Danger: \n \(breachedVerse.danger)\n").foregroundColor(.red)
            Text( "Current Kirundi: \n \(breachedVerse.current)\n").foregroundColor(.pink)
            Text( "Suggested ratifications: \n \(breachedVerse.suggestion)\n")
            
        }.padding().alignmentGuide(.leading) { d in d[.trailing]}
     }
    }
}


struct BreachedVerseDetailView_Previews: PreviewProvider {
    static var previews: some View {
        BreachedVerseDetailView(breachedVerse: BreachedVerse.sampleBreachedVerse)
    }
}
