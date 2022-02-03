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
        
            VStack {
                Text("Choose Your Brew Method")
                    .bold()
                    .font(.largeTitle)
                    .padding()
                Spacer()
            // I can use BrewModel.frenchPress or just .frenchPress -> equals same result
                NavigationLink(destination: Water(brewMethod: .frenchPress)) {
                    Text("French Press")
                }
                NavigationLink(destination: Water(brewMethod: .chemex)) {
                    Text("Chemex")
                }
                NavigationLink(destination: Water(brewMethod: .drip)) {
                    Text("Drip")
                }

                NavigationLink(destination: Water(brewMethod: .mokaPot)) {
                    Text("Moka Pot")
                }
                NavigationLink(destination: Water(brewMethod: .aeroPress)) {
                    Text("Aero Press")
                }
                
                Spacer()
            
    }
}
}
struct BrewMethods_Previews: PreviewProvider {
    static var previews: some View {
        BrewMethods()
    }
}
