//
//  StrongDelusionDetailView.swift
//  Breach Repairer
//
//  Created by Jack Ntihaniraho on 2022-04-10.
//

import SwiftUI

struct StrongDelusionDetailView: View {
    var strongDelusion: StrongDelusion
    var body: some View {
        ZStack{
            AngularGradient(gradient: Gradient(colors: [.red, .yellow, .green, .blue, .purple, .red]), center: .topTrailing)
                .ignoresSafeArea()
        VStack()
        {
            Text("Verse: \(strongDelusion.verse)").monospacedDigit().font(.caption2)
            Text("Strong's: \(strongDelusion.inJamesStrongSJHenryThayerSASV)")
            Text("KJV: \(strongDelusion.inKJV)").foregroundColor(.accentColor)
            Text("Delusion: \(strongDelusion.purpleDescription)").foregroundColor(.purple)
        }.padding()
    }
    }
    
}

struct StrongDelusionDetailView_Previews: PreviewProvider {
    static var previews: some View {
        StrongDelusionDetailView(strongDelusion: StrongDelusion.sampleStrongDelusion)
    }
}
