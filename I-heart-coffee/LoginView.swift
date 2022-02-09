//
//  LoginView.swift
//  I-heart-coffee
//
//  Created by Susan Tovar on 2/5/22.
//

import SwiftUI

struct LoginView: View {

  // 1
  @EnvironmentObject var viewModel: AuthenticationViewModel

  var body: some View {
    VStack {
      Spacer()

      // 2
      Image("sun")
        .resizable()
        .aspectRatio(contentMode: .fit)

      Text("Welcome to I ❤️ Coffee!")
        .fontWeight(.black)
        .foregroundColor(Color(.systemIndigo))
        .font(.largeTitle)
        .multilineTextAlignment(.center)

      Text("Brew the perfect cup of coffee.")
        .fontWeight(.light)
        .multilineTextAlignment(.center)
        .padding()

      Spacer()

      // 3
      GoogleSignInButton()
        .padding()
        .onTapGesture {
          viewModel.signIn()
        }
    }
  }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
