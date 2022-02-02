//
//  TabBar.swift
//  I-heart-coffee
//
//  Created by Susan Tovar on 1/30/22.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem{
                    Label("Home", systemImage: "house")
                }
            Favorites()
                .tabItem{
                    Label("Favorites", systemImage: "heart")
                }
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
