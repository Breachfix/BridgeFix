





  //Logo.swift
 // Breach Repairer

 // Created by Jack Ntihaniraho on 2022-05-07.


import SwiftUI

struct Logo: View {
    @State private var animationFinished: Bool = false
    @State private var animationStarted: Bool = false
    @State private var removeGIF = false


    var body: some View {

       

        ZStack{
            
            Welcome()
            
            ZStack{
                
                
               // Color("BG")
                Color.accentColor
                    
                    .ignoresSafeArea()
                  
                    
                
                if !removeGIF{
                    ZStack{

                        if animationStarted{
                                        Image("B R")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .padding()
                                    }
                                    else {
                                        GifView(fileName: "logotra")
                                        
                                           .aspectRatio(contentMode: .fit)
                                           .padding(.all)
                                           .padding(.leading, -70 )

                                    }

                                }.animation(.none, value: animationFinished)
                }

                } .opacity(animationFinished ? 0 : 1)
        }
            .onAppear{

        DispatchQueue.main.asyncAfter(deadline: .now() + 0.62) {


            DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                withAnimation(.easeInOut(duration: 1.0)){
                    animationFinished = true
                }
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.62) {
                    removeGIF = true
                }
            }

        }
            }
}

struct Logo_Previews: PreviewProvider {
    static var previews: some View {
        Logo()
    }
}

}
