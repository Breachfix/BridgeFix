//
//  ContentView.swift
//  Breach Repairer
//
//  Created by Jack Ntihaniraho on 2022-04-09.
//

import SwiftUI
import FLAnimatedImage




struct ContentView: View {

    init(){
               UITabBar.appearance().isTranslucent = false
               UITabBar.appearance().barTintColor = UIColor.black
           }

    var body: some View {
        
       
        
        TabView {
            BRHomeView()
                        .tabItem {
                            Image(systemName: "house")
                            Text("Home")
                        }.tag(0)

            SearchView()
                        .tabItem {
                            Image(systemName: "magnifyingglass")
                            Text("Search")
                        }.tag(0)
            ComingSoon()
                        .tabItem {
                            Image(systemName: "play.rectangle")
                            Text("Coming Soon")
                        }.tag(0)

            DownloadsView()
                        .tabItem {
                            Image(systemName: "arrow.down.to.line.alt")
                            Text("Downloads")
                        }.tag(0)
            Text("More")
                        .tabItem {
                            Image(systemName: "equal")
                            Text("More")
                        }.tag(0)

           
      
           
       }
        .accentColor(.white)
}
        
    
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
}


