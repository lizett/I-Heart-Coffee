//
//  Sandbox.swift
//  I-heart-coffee
//
//  Created by Susan Tovar on 1/29/22.
//

import SwiftUI

struct Sandbox: View {
    @State private var selection = 1
    var body: some View {
        HStack {
            Text ("How many cups ")
            Picker(selection: $selection, label: Text("Zeige Deteils")) {
                Text("Schmelzpunkt").tag(1)
                Text("Instrumentelle Analytik").tag(2)
            }
        }
    }
}

struct Sandbox_Previews: PreviewProvider {
    static var previews: some View {
        Sandbox()
    }
}
