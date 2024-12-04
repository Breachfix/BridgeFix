//
//  VerseView.swift
//  Breach Repairer
//
//  Created by Jack Ntihaniraho on 2022-04-09.
//

import SwiftUI

struct VerseView: View {
    var genesis: Genesis
    var body: some View {
      VStack(spacing: 10){
        Text("\(genesis.verse)").foregroundColor(.red)
        Text("\(genesis.chapter)").foregroundColor(.blue)
        Text("\(genesis.current)").bold()
        Text("\(genesis.danger)").padding().foregroundColor(.secondary)
        Text("\(genesis.evidence)")
        Text("\(genesis.explanation)")
        Text("\(genesis.kjv)")
        Text("\(genesis.niv)")
        Text("\(genesis.book)").bold()
        Text("\(genesis.error)")
    }
        
    }
}

struct VerseView_Previews: PreviewProvider {
    static var previews: some View {
        VerseView( genesis: Genesis.sampleGenesis)
    }
}
