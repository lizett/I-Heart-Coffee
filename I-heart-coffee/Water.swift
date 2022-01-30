//
//  Water.swift
//  I-heart-coffee
//
//  Created by Susan Tovar on 1/29/22.
//

import SwiftUI

struct Water: View {
    @State var value = ""
    var waterOptions = "How many cups"
    var dropDownList = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"]
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
                        .foregroundColor(Color.orange)
                        .font(Font.system(size: 20, weight: .bold))
                }
                .padding(.horizontal)
                Rectangle()
                    .fill(Color.orange)
                    .frame(height: 2)
            }
        }
    }
}

struct Water_Previews: PreviewProvider {
    static var previews: some View {
        Water()
    }
}
