//
//  Welcome.swift
//  Breach Repairer
//
//  Created by Jack Ntihaniraho on 2022-05-12.
//

import SwiftUI

//import FLAnimatedImage

struct Welcome: View {
    
    @State private var isBRHomeView = false
    @State private var isPrivacyView = false
    @State private var isBibleView = false
    @State private var isColourContentView = false
    
    var body: some View {
        
        NavigationView {
            VStack{
                HStack(spacing: 7){
                    NavigationLink(destination:  BRHomeView(), isActive: $isBRHomeView ){
                        
                        Image("logo")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 150, height: 25)
                            .padding(.leading, -50)
                        Spacer()
                    
                        
                    }
                    .navigationBarHidden(true)
                   
                    Spacer()
                    
                    NavigationLink(destination:  PrivacyView(), isActive: $isPrivacyView ){
                        Text("Help")
                            .padding(.trailing, 12)
                            .font(.system(size: 12))
                       
                    }
                    Spacer()
                    
                
                    
                    NavigationLink(destination:  PrivacyView(), isActive: $isPrivacyView ){
                        Text("privacy")
                            .padding(.trailing, 12)
                            .font(.system(size: 12))
                        Spacer()
                        
                     
                    }
                    
                    NavigationLink(destination:   ColourContentView(), isActive: $isColourContentView ){
                        Image(systemName: "paintpalette.fill")
                            .padding(.leading, 50)

                        Spacer()
                        
                    }
                    
                }.font(.system(size: 20, weight: .light))
                    .foregroundColor(.primary)
                    .padding(.top, 10)
                    .padding(.horizontal)
                
                Spacer()
               
              
                
                NavigationLink(destination:  ContentView(), isActive: $isBRHomeView ){
                    
                    Image("welcome1")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding()
                }
                
                Spacer()
                
    
                
                Text("Repairers of the Breach")
                    .font(.title.bold())
                    .padding(.top, 25)
                Text("Raising the foundations of \n many generations")
                    .font(.title3)
                    .multilineTextAlignment(.center)
                    .padding(.top, 15)
                
                Spacer()
                
                NavigationLink(destination:  BibleView(), isActive: $isBibleView ){
                    Text("SIGN IN")
                        .foregroundColor(.white)
                        .padding(.vertical, 10)
                        .frame(maxWidth: .infinity)
                        .background(Color.red)
                        .cornerRadius(7)
                        .padding()
                    
                    
                    
                }.navigationBarHidden(true)
            }
            
            Spacer()
            
            
            
        }
        
    }

}

struct Welcome_Previews: PreviewProvider {
    static var previews: some View {
        Welcome()
    }
}
