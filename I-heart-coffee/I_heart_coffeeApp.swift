//
//  I_heart_coffeeApp.swift
//  I-heart-coffee
//
//  Created by Susan Tovar on 1/29/22.
//

import SwiftUI
import Firebase


@main
struct I_heart_coffeeApp: App {
    @StateObject var viewModel = AuthenticationViewModel()
    
    init() {
        setupAuthentication()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(viewModel)
        }
    }
}

extension I_heart_coffeeApp {
  private func setupAuthentication() {
    FirebaseApp.configure()
  }
}
