//
//  About.swift
//  I-heart-coffee
//
//  Created by Susan Tovar on 2/15/22.
//

import SwiftUI

struct About: View {
    
    var body: some View {
        VStack {
            Text("About I ❤️ Coffee")
                .bold()
                .font(.largeTitle)
//                .padding(55)
            Spacer()
            Text("Cups are measured as 6 oz. This is the standard meausurement used by most, if not all, your brewing devices.")
                .padding()
            Text("This app uses a the calculation of 6.4 grams per tablespoon. I have measured this myself personally and this is the estimation I use for all my calculations in this app. Weight is measured AFTER coffee beans have been grinded.")
                .padding()
            Text("Grinder models used currently are as follows:")
                .padding(5)
            Text("• Baratza Encore")
            Text("• Baratza Virtuoso+")
            Text("• OXO Brew Conical Burr Grinder")
            Text("• Cuisinart Professional Burr Mill")
               
            Spacer()
        } .font(.system(size: 20))
        .background(Color("AboutColor"))

        
    }
       
}

struct About_Previews: PreviewProvider {
    static var previews: some View {
        About()
    }
}
