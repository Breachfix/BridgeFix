//
//  CustomTabSwitcher.swift
//  Breach Repairer
//
//  Created by Jack Ntihaniraho on 2022-05-09.
//

import SwiftUI


struct CustomTabSwitcher: View {
    
    @State private var currentTab: CustomTab = .episodes
    
    
    var tabs: [CustomTab]
    var movie: Movie
    @Binding var showSeasinPicker: Bool
    @Binding var selectedSeason: Int

    
    func widthForTab(_ tab: CustomTab) -> CGFloat {
        let string = tab.rawValue
        return string.widthOfString(usingFont: .systemFont(ofSize: 16 , weight: .bold))
    }
    var body: some View {
        VStack{
            // Custom tab picker
            ScrollView(.horizontal, showsIndicators: false){
                HStack(spacing: 20){
                    ForEach(tabs, id: \.self) { tab in
                        VStack {
                            //red bar
                            Rectangle()
                                .frame(width:((widthForTab(tab))  ), height: 6 )
                                .foregroundColor(tab == currentTab ? Color.red : Color.clear)
                            //button
                            
                            Button(action: {
                                currentTab = tab
                            }, label: {
                                Text(tab.rawValue)
                                    .font(.system(size: 16, weight: .bold))
                                    .foregroundColor(tab == currentTab ? Color.white : Color.gray)
                                   
                            })
                            .buttonStyle(PlainButtonStyle())
                            .frame(width:((widthForTab(tab))  ), height: 30 )
                            
                        }
                        
                    }
                }
            }
            
            // Selected View
            switch currentTab {
            case .episodes:
                EpisodesView(episodes: movie.episodes ?? [], showSeasonPicker: $showSeasinPicker, selectedSeason: $selectedSeason)
            case .trailers:
                TrailerList(trailers: movie.trailers)
            case .more:
                MoreLikeThis(movies: movie.moreLikeThisMovies)
            }
        }.foregroundColor(.white)
    }
}

enum CustomTab: String{
    case episodes =  "EPISODES"
    case trailers =  "TRAILERS & MORE"
    case more =  "MORE LIKE THIS"
}

struct CustomTabSwitcher_Previews: PreviewProvider {
    static var previews: some View {
        ZStack{
            Color.black
                .ignoresSafeArea()
            CustomTabSwitcher(tabs: [.episodes, .trailers, .more], movie: exampleMovie9, showSeasinPicker: .constant(false), selectedSeason: .constant(1))
        }
    }
}
