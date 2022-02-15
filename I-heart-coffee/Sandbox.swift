//
//  Sandbox.swift
//  I-heart-coffee
//
//  Created by Susan Tovar on 1/29/22.
//

import SwiftUI

struct Sandbox: View {
    @State var value = ""
    var waterOptions = "How many cups do you want to brew? "
    var dropDownList = ["10", "9", "8", "7", "6", "5", "4", "3", "2", "1"]
    
    var body: some View {
        Menu {
            ForEach(dropDownList, id: \.self) { client in Button(client) {
                self.value = client
            }
            }
        } label: {
            VStack(spacing: 5){
                HStack{
                    Text(value.isEmpty ? waterOptions : value)
                        .foregroundColor(value.isEmpty ? .gray : .black)
                    Spacer()
                    Image(systemName: "chevron.down")
                        .foregroundColor(Color.pink)
                        .font(Font.system(size: 20, weight: .bold))
                }
                .padding(.horizontal)
                Rectangle()
                    .fill(Color.pink)
                    .frame(height: 2)
            }
        }
        
    }
}
struct Sandbox_Previews: PreviewProvider {
    static var previews: some View {
        Sandbox()
    }
}
