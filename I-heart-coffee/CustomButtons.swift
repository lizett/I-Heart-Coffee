//
//  CustomButtons.swift
//  I-heart-coffee
//
//  Created by Susan Tovar on 2/10/22.
//

import Foundation
import SwiftUI

struct CustomizedStyle: PrimitiveButtonStyle {
    typealias Body = Button
    func makeBody(configuration: Configuration) -> some View {
        print(configuration.label)
        configuration.trigger()
        
        return Button(configuration)
            .background(Color("Custom Color"))
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .foregroundColor(Color("Text Color"))
//            .border(Color("Text Color"), width: 2)
            .overlay (
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color("Text Color"), lineWidth: 3)
            )
           
        
            
            
        
            
        
    }
}
//struct CustomButtons_Previews: PreviewProvider {
//    static var previews: some View {
//        CustomButtons()
//    }
//}
