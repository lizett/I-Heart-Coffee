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
        case .frenchPress:
            return (Double((17 * waterAmount))/15.0)
        case .drip:
            return Double(((30 * waterAmount)/15))
        case .chemex:
            return Double(((17 * waterAmount)/15))
        case .mokaPot:
            return Double(((18 * waterAmount)/15))
        case .aeroPress:
            return Double(((15 * waterAmount)/15))
        default:
            return Double(((15 * waterAmount)/15))
        }
    }
    var body: some View {
        VStack {
            Picker(selection: $waterAmount, label: Text("How many cup(s)")) {
                Text("1").tag(1)
                Text("2").tag(2)
                Text("3").tag(3)
            }
            Button("Cups is \(waterAmount)") {
                self.waterAmount += 1
            }
            Text("Brew method is \(brewModel.rawValue)")
            Text("Grinds is \(computeGrinds())")
        }
    }
}
// in VStack or above HStack:
//      Text("For brew method \(brewMethod.rawValue) you will need")
// HStack {
//      Text("How many cup(s) \(waterDropdown)"?)

//      Text("\(calculator) ")
//}



struct Water_Previews: PreviewProvider {
    static var previews: some View {
        Water(brewModel: .drip)
    }
}
