//
//  ManuscriptView.swift
//  Breach Repairer
//
//  Created by Jack Ntihaniraho on 2022-04-09.
//

import SwiftUI

struct ManuscriptView: View {
    private var Manuscripts: [Manuscript] = Manuscript.allManuscripts
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
                ForEach((Manuscripts).filter({ "\($0)".contains(searchText)||searchText.isEmpty}), id: \.date ){ manuscript in
                    NavigationLink(destination: DetailView(manuscript: manuscript)){
                        VStack(alignment: .leading){
                            Text("\(manuscript.date)").font(.headline).dynamicTypeSize(.medium)
                        }
                    }
                    .padding()
                }
            
            }.navigationTitle("Scripture Lineage").foregroundColor(.accentColor)
          
            
        }
        
      
    }

}

struct ManuscriptView_Previews: PreviewProvider {
    static var previews: some View {
        ManuscriptView()
    }
}

