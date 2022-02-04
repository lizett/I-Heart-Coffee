//
//  Sandbox2.swift
//  I-heart-coffee
//
//  Created by Susan Tovar on 2/3/22.
//


import SwiftUI

//class brewState: ObservableObject {
//    @Published var brewMethod = BrewModel
//}

//class Calculator: ObservableObject {
//    @Published var brewMethod = BrewModel
//    @Published var waterAmount:Int = 1
//
//    make int round up or to become float to specific place
//    var grinds = Int()
//
//    switch brewMethod {
//    case .frenchPress:
//        grinds = ((17 * waterAmount)/15)
//    case .drip:
//        grinds = ((30 * waterAmount)/15)
//    case .chemex:
//        grinds = ((17 * waterAmount)/15)
//    case .mokaPot:
//        grinds = ((18 * waterAmount)/15)
//    case .aeroPress:
//        grinds = ((15 * waterAmount)/15)
//    default:
//        grinds = ((15 * waterAmount)/15)
//    }
//}
//Can I get Calculator to watch
//  var methodsMath = BrewModel
//  switch methodsMath {
//    case. frenchPress:
//  }

//    func frenchPressChemex () -> Int {
//        return 10
//        gramsCoffee = waterAmount * 17
//        tbpCoffee = gramsCoffee/15
//
//
//    }
//class Calculator3 {
//    var french = 17
//    var drip = 30
//}
//
//struct Sandbox2: View {
////    @ObservedObject var calculator = Calculator()
//    @State var calculator = Calculator3()
//    @State var brewMethod: BrewModel
//    @State var waterAmount: Int = 1
//    var grinds = Int()
//
//    var body: some View {
//        VStack {
//            switch brewMethod {
//            case .frenchPress:
//                grinds = ((17 * waterAmount)/15)
//            case .drip:
//                grinds = ((30 * waterAmount)/15)
//            Picker(selection: $waterAmount, label: Text("How many cup(s)")) {
//                Text("1").tag(1)
//                Text("2").tag(2)
//                Text("3").tag(3)
//            }
//            Button("Cups is \(waterAmount)") {
//                waterAmount += 1
//            print("water value:\(self.$calculator.frenchPressChemex")
//            }
//
////            Text("Brew method is \(brewMethod.rawValue)")
////            Text("Grinds is \((calculator.french * waterAmount)/15)")
//        }
//    }
//}


// in VStack or above HStack:
//      Text("For brew method \(brewMethod.rawValue) you will need")
// HStack {
//      Text("How many cup(s) \(waterDropdown)"?)

//      Text("\(calculator) ")
//}

//
//struct Sandbox2_Previews: PreviewProvider {
//    static var previews: some View {
//        Sandbox2(brewMethod: .drip)
//    }
//}
