//
//  FlagView.swift
//  Guess
//
//  Created by Jack Ntihaniraho on 2022-02-13.
//

import SwiftUI

struct FlagImage: View{
    let name: String
    var body: some View{
        Image(name)
            .resizable()
            .renderingMode(.original)
            .padding(2)
            .frame(width: 250.0, height: 150.0, alignment: Alignment.center)
            
            //.shadow(radius: 5)
    }
}

struct FlagImage_Previews: PreviewProvider {
    static var previews: some View {
        FlagImage(name: "France")
    }
}
