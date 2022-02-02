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
                Button(action: {
                    // substituting action with "Clicked" for now
                    print("Clicked")
                }, label: {
                    Text("Sign In/Sign Up")
                })
            }
            
                
//            Button(action: {
//                // substituting action with "Clicked" for now
//                print("Clicked")
//            }, label: {
//                Text("Sign In")
//            })
//            Button(action: {
//                // substituting action with "Clicked" for now
//                print("Clicked")
//            }, label: {
//                Text("Continue as Guest")
//            })
        }
    
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
