//
//  AnimatedImageView.swift
//  Breach Repairer
//
//  Created by Jack Ntihaniraho on 2022-05-07.
//

import SwiftUI
import FLAnimatedImage

struct GifView: UIViewRepresentable {
 
    let animatedView = FLAnimatedImageView()
    var fileName : String
    func makeUIView (context: UIViewRepresentableContext<GifView>) -> UIView {
       let view = UIView()
       print(fileName, "   -> This is the filename")
       let path : String? = Bundle.main.path(forResource : fileName, ofType: "gif")
       let url = URL(fileURLWithPath: path!)
       let gifData = try! Data (contentsOf: url)
        
        
        
        let gif = FLAnimatedImage (animatedGIFData : gifData);
        animatedView.animatedImage = gif
        
      animatedView.translatesAutoresizingMaskIntoConstraints = false; view.addSubview (animatedView)
        
         NSLayoutConstraint.activate([
             animatedView.heightAnchor.constraint (equalTo: view.heightAnchor),
             animatedView.widthAnchor.constraint (equalTo: view.widthAnchor)
         ])
      return view
  }
   func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<GifView>) {
  }
    
}





//
//  Logo.swift
//  Breach Repairer
//
//  Created by Jack Ntihaniraho on 2022-05-07.
//

//import SwiftUI
// 
//struct Logo: View {
//    @State private var animationFinished: Bool = false
//    @State private var animationStarted: Bool = false
//
//   
//    var body: some View {
//        
//        @State privatevar Logo = GifView( fileName: "" )
//        
//        ZStack{
//            Color("BG")
//            ZStack{
//                
//                if animationStarted{
//                                Image("B R")
//                                    .resizable()
//                            }
//                            else {
//                                GifView(fileName: "logotra")
//                                   .aspectRatio(contentMode: .fit)
//                                   
//                            }
//                           
//                        }.animation(.none, value: animationFinished)
//                
//            } .opacity(animationFinished ? 0 : 1)
//            .onAppear{
//        
//        DispatchQueue.main.asyncAfter(deadline: .now() + 0.62) {
//            
//            
//            DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
//                withAnimation(.easeInOut(duration: 0.7)){
//                    animationFinished = true
//                }
//            }
//            
//        }
//    }
//}
//
//struct Logo_Previews: PreviewProvider {
//    static var previews: some View {
//        Logo()
//    }
//}
//
