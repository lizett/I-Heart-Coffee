//
//  Favorites.swift
//  I-heart-coffee
//
//  Created by Susan Tovar on 1/30/22.
//

import SwiftUI

struct Favorites: View {
    var body: some View {
        NavigationView{
            Text("Hello Favorites")
                .navigationTitle("Favorites")
        }
        .navigationViewStyle(.stack)
        
    }
}

struct Favorites_Previews: PreviewProvider {
    static var previews: some View {
        Favorites()
    }
}
