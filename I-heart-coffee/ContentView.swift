//
//  ContentView.swift
//  I-heart-coffee
//
//  Created by Susan Tovar on 1/29/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                Text("I ❤️ Coffee")
                    .bold()
                    .padding()
                Spacer()
                NavigationLink(destination: BrewMethods()) {
                    Text("Continue as Guest")
                        .padding()
                }
                // substituting button and action with "Clicked" for now
                Button(action: {
                    print("Clicked")
                }, label: {
                    Text("Sign In/Sign Up")
                })
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
