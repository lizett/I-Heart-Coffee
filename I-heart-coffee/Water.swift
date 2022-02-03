//
//  Water.swift
//  I-heart-coffee
//
//  Created by Susan Tovar on 1/29/22.
//

import SwiftUI

class Calculator {
    func frenchPressChemex () -> Int {
        return 10
//        gramsCoffee = waterAmount * 17
//        tbpCoffee = gramsCoffee/15
//
//        return tbpCoffee
    }
    
}

struct Water: View {
    @State var calculator = Calculator()
    @State var brewMethod: BrewModel
    @State var waterAmount: Int = 1
    var body: some View {
        VStack {
            Picker(selection: $waterAmount, label: Text("How many cup(s)")) {
                Text("1").tag(3)
                Text("2").tag(2)
                Text("3").tag(1)
            }
            Button("Cups is \(waterAmount)") {
                self.waterAmount += 1
//            print("water value:\(self.$calculator.frenchPressChemex")
            }
            Text("Brew method is \(brewMethod.rawValue)")
        }
        
    }
    
}

//    @State var value = ""
//    var waterOptions = "How many cups"
//    var dropDownList = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"]
//    var body: some View {
//        Menu {
//            ForEach(dropDownList, id: \.self) { client in Button(client) {
//                self.value = client
//            }
//            }
//        } label: {
//            VStack(spacing: 5){
//                HStack{
//                    Text(value.isEmpty ? waterOptions : value)
//                        .foregroundColor(value.isEmpty ? .gray : .black)
//                    Spacer()
//                    Image(systemName: "chevron.down")
//                        .foregroundColor(Color.orange)
//                        .font(Font.system(size: 20, weight: .bold))
//                }
//                .padding(.horizontal)
//                Rectangle()
//                    .fill(Color.orange)
//                    .frame(height: 2)
//            }
//        }
//    }
//}

struct Water_Previews: PreviewProvider {
    static var previews: some View {
        Water(brewMethod: .drip)
    }
}
