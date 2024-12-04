//
//  BreachedVerseView.swift
//  Breach Repairer
//
//  Created by Jack Ntihaniraho on 2022-04-10.
//

import SwiftUI

struct BreachedVerseView: View {
    private var BreachedVerses:[BreachedVerse] = BreachedVerse.allBreachedVerses
    @State var searchText = ""
    @State var isSearching = false
    var body: some View {
        NavigationView{
            List{
                HStack{
                    HStack{
                        TextField("Search verse here", text: $searchText).padding()
                            .padding(.leading, 32)
                            .background(Color(.systemGray5))
                            .cornerRadius(6)
                            .padding(.horizontal)
                            .onTapGesture(perform: {
                                isSearching = true
                                
                            })
                            .overlay(
                                HStack {
                                    Image(systemName: "magnifyingglass")
                                    Spacer()
                                    
                                    if isSearching {
                                        Button(action: { searchText = "" }, label: { Image(systemName: "xmark.circle.fill")
                                                .padding(.vertical)
                                        })
                                    
                                    }
                                } .padding(.horizontal, 42)
                                    .foregroundColor(Color.gray)
                            )
                        if isSearching{
                            Button(action: {
                                isSearching = false
                                searchText = ""
                                
                                UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                            }, label: { Text("Cancel")
                                    .padding(.trailing)
                                    .padding(.leading, -12)
                        })
                            .transition(.move(edge: .trailing))
                           
                        }
                    }
                   
                    
                }
                ForEach((BreachedVerses).filter({ "\($0)".contains(searchText)||searchText.isEmpty}), id: \.batch ){ breachedVerse in
                    NavigationLink(destination: BreachedVerseDetailView(breachedVerse: breachedVerse)){
                        VStack(alignment: .leading) {
                            Text( " \(breachedVerse.bookName) \(breachedVerse.chapter):\(breachedVerse.verse)") 
                                  }
                    }
                
                                    
                    .padding(4)
                }
            
            }.navigationTitle("Breached Verses").foregroundColor(.accentColor)
            
            
        }
    }
}
                                       
struct BreachedVerseView_Previews: PreviewProvider {
    static var previews: some View {
        BreachedVerseView()
    }
}
