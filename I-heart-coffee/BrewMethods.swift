//
//  BrewMethods.swift
//  I-heart-coffee
//
//  Created by Susan Tovar on 1/29/22.
//

import SwiftUI

struct BrewMethods: View {
    var body: some View {
        VStack {
            Text("Brew Methods")
                .bold()
                .padding()
            Button(action: {
                // substituting action with "Clicked" for now
                print("Clicked")
            }, label: {
                Text("French Press").bold()
            })
            Button(action: {
                // substituting action with "Clicked" for now
                print("Clicked")
            }, label: {
                Text("Chemex").bold()
            })
            Button(action: {
                // substituting action with "Clicked" for now
                print("Clicked")
            }, label: {
                Text("Drip").bold()
            })
            Button(action: {
                // substituting action with "Clicked" for now
                print("Clicked")
            }, label: {
                Text("Aeropress").bold()
            })
            Button(action: {
                // substituting action with "Clicked" for now
                print("Clicked")
            }, label: {
                Text("Moka Pot").bold()
            })
        }

    }
}

struct BrewMethods_Previews: PreviewProvider {
    static var previews: some View {
        BrewMethods()
    }
}
