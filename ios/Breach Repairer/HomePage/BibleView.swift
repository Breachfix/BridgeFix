//
//  SwiftUIView.swift
//  Breach Repairer
//
//  Created by Jack Ntihaniraho on 2022-05-17.
//

import SwiftUI

struct BibleView: View {
    var body: some View {
       
        TabView{
            ManuscriptView()
                .tabItem{
                    Label("Scripts", systemImage:
                            "applescript.fill")
                }
            StrongDelusionView()
                .tabItem{
                    Label("Scripts", systemImage: "books.vertical.circle.fill")
                }
            BreachedVerseView()
                .tabItem{
                    Label("Verse", systemImage:
                            "text.book.closed.fill")
                }
            FlagsView()
                .tabItem{
                    Label("Flags", systemImage: "flag.filled.and.flag.crossed")
                }
        }
    }
}

struct BibleView_Previews: PreviewProvider {
    static var previews: some View {
        BibleView()
    }
}
