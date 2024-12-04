//
//  BreachRestoredView.swift
//  Breach Repairer
//
//  Created by Jack Ntihaniraho on 2022-04-09.
//

import SwiftUI


struct PrivacyView: View {
 
    var body: some View {
        
        NavigationView{
            HStack(){
                NavigationLink(destination:  Text("This App following and adhere the following privacy policy") ){
                    Text("Loading...")
                        .onTapGesture() {
                            
                        }
                   
                    
                }
            }
        
        }
        
    }
}

struct BreachRestoredView_Previews: PreviewProvider {
    static var previews: some View {
        PrivacyView()
    }
}
