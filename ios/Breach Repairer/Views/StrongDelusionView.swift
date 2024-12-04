//
//  StrongDelusionView.swift
//  Breach Repairer
//
//  Created by Jack Ntihaniraho on 2022-04-10.
//

import SwiftUI

struct StrongDelusionView: View {
    private var StrongDelusions:[StrongDelusion] = StrongDelusion.allStrongDelusions
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
                ForEach((StrongDelusions).filter({ "\($0)".contains(searchText)||searchText.isEmpty}), id: \.verse ){ strongDelusion in
                    NavigationLink(destination: StrongDelusionDetailView(strongDelusion: strongDelusion)){
                        VStack(alignment: .leading){
                            Text("\(strongDelusion.verse)").font(.headline).dynamicTypeSize(.small)
                        }
                    }
                    .padding(4)
                }
            
            }.navigationTitle("Strong Delusions").foregroundColor(.accentColor)
            
            
        }
    }
}

struct StrongDelusionView_Previews: PreviewProvider {
    static var previews: some View {
        StrongDelusionView()
    }
}
