//
//  BrewMethods.swift
//  I-heart-coffee
//
//  Created by Susan Tovar on 1/29/22.
//

import SwiftUI

struct BrewMethods: View {
    @State var brewMethod: BrewModel?
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Choose Your Brew Method")
                    .bold()
                    .font(.largeTitle)
                    .padding()
                Spacer()
                NavigationLink(destination: Water(brewMethod: .frenchPress)) {
                    Text("French Press")
                }
//                I can use BrewModel.mokaPot or just .mokaPot -> same result
                NavigationLink(destination: Water(brewMethod: .mokaPot)) {
                    Text("Moka Pot")
                }
//                Button(action: {
//                    // substituting action with "Clicked" for now
//                    (print("Clicked"))
//                }, label: {
//                    Text("French Press").bold()
//                })
//                Button(action: {
//                    // substituting action with "Clicked" for now
//                    print("Clicked")
//                }, label: {
//                    Text("Chemex").bold()
//                })
//

        }
    }
}
}
struct BrewMethods_Previews: PreviewProvider {
    static var previews: some View {
        BrewMethods()
    }
}
