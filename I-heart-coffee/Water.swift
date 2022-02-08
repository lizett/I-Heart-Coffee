//
//  Water.swift
//  I-heart-coffee
//
//  Created by Susan Tovar on 1/29/22.
//

import SwiftUI


struct Water: View {
    
    @State var brewModel: BrewModel
    @State var waterAmount: Int = 1

    func computeGrinds () -> Double {
        switch brewModel {
        case .frenchPress, .chemex:
            return (Double((17 * waterAmount))/15)
        case .drip:
            return Double(((30 * waterAmount)/15))
        case .mokaPot:
            return Double(((18 * waterAmount)/15))
        case .aeroPress:
            return Double(((15 * waterAmount)/15))
            //        default:
            //            return Double(((15 * waterAmount)/15))
        }
    }
    var body: some View {
        VStack (spacing: 5) {
            Spacer()
            HStack {
                Text("").padding(20)
                Text("How many cups do you want to brew?")
                Picker("", selection: $waterAmount) {
                    ForEach(1...15, id: \.self){
                        Text("\($0)")
                    }
                }
                Spacer()
            }
            if (brewModel == .frenchPress) {
              Image("FrenchPress")
                    .resizable()
                    .scaledToFit()
                    .padding(30)
            } else if brewModel == .chemex {
              Image("Chemex")
                    .resizable()
                    .scaledToFit()
                .padding(30)
            } else if brewModel == .aeroPress {
                Image("AeroPress")
                      .resizable()
                      .scaledToFit()
                      .padding(30)
              } else if brewModel == .mokaPot {
                  Image("MokaPot")
                        .resizable()
                        .scaledToFit()
                        .padding(30)
                } else if brewModel == .drip {
                    Image("Drip")
//                          .clipShape(RoundedRectangle(cornerRadius: 30))
                          .resizable()
                          .scaledToFit()
//                          .padding(30)
//                          .cornerRadius(7) // Inner corner radius
                              .padding(5) // Width of the border
                              .background(Color.primary) // Color of the border
                              .cornerRadius(10) // Outer corner radius
                  }

            let formatted = String(format: "%.2f", computeGrinds())
            Text("\(brewModel.rawValue) coffee needs")
            Text("\(formatted) tbsp of coffee grinds for \(waterAmount) cup(s) of coffee")
            Spacer()
        }
    }
}

struct Water_Previews: PreviewProvider {
    static var previews: some View {
        Water(brewModel: .drip)
    }
}
