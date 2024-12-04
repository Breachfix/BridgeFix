//
//  DetailView.swift
//  Breach Repairer
//
//  Created by Jack Ntihaniraho on 2022-04-09.
//

import SwiftUI

struct DetailView: View {
  
    var manuscript: Manuscript
    var body: some View {
       
        ZStack{
            AngularGradient(gradient: Gradient(colors: [.red, .yellow, .green, .blue, .purple, .red]), center: .topTrailing)
                .ignoresSafeArea()
           
            VStack() {
                TabView{
                   
                
            Image("\(manuscript.copy)")
                .resizable()
                .aspectRatio(contentMode: .fit)
           
            Text("\(manuscript.date)").monospacedDigit().foregroundColor(.white).padding()
                .background(.blue)
                .padding()
                .background(.red)
                .padding()
                .background(.orange)
                .padding()
                .background(.yellow)
                .padding()
                .background(.brown)
            Text("\(manuscript.text)").bold()
            Text("\(manuscript.details)").padding().foregroundColor(.secondary)
           
                }.tabViewStyle(.page(indexDisplayMode: .never))                    .indexViewStyle(.page(backgroundDisplayMode: .never))
                    
        }
       
        
      }
        
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(manuscript: Manuscript.sampleManuscript)
        
    }
}
