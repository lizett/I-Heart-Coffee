//
//  ContentView.swift
//  I-heart-coffee
//
//  Created by Susan Tovar on 1/29/22.
//

import SwiftUI

struct ContentView: View {
//    @StateObject var favorites = Favorites()
    @EnvironmentObject var viewModel: AuthenticationViewModel
    
//    var body: some View {
//    switch viewModel.state {
//    case .signedIn: HomeView()
//    case .signedOut: LoginView()
//    }
//      }
//
    var body: some View {
//        if !$viewModel.signedIn {
//            return AnyView(LoginView())
//        } else {
//            return AnyView(BrewMethods())
//        }
        NavigationView() {
            VStack {
                Spacer()
                Image("sun")
                    .resizable()
                    .scaledToFit()
                //                Spacer()
                NavigationLink(destination: BrewMethods()) {
                    Text("Brew the perfect cup of coffee!")
                        .padding()
                }
            
                GoogleSignInButton()
                    .onTapGesture {
                        viewModel.signIn()
                }
                //                    Spacer()
            }
            .background(Color("Custom Color"))
//            .environmentObject(favorites)
        }
    }
        
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
