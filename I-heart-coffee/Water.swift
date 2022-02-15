//
//  Water.swift
//  I-heart-coffee
//
//  Created by Susan Tovar on 1/29/22.
//

import SwiftUI


struct Water: View {
    //    @EnvironmentObject var favorites: Favorites
    //    I don't think I need the below state for animation
    //    @State var animationInProgress = true
    @State var brewModel: BrewModel
    @State var waterAmount: Int = 1
    @State var grindsSelection = "tbsp"
    @State var grinderSelection = ""
    
    var grindOptions = ["tbsp", "grams"]
    var grinderOptions = ["Baratza","Cuisinart","OXO"]
    
    func grinderOutput () -> String {
        if brewModel == .frenchPress && grinderSelection == "Baratza" {
            return baratza.frenchPress.rawValue
        } else if brewModel == .frenchPress && grinderSelection == "Cuisinart" {
            return cuisinart.frenchPress.rawValue
        } else if brewModel == .frenchPress && grinderSelection == "OXO" {
            return oxo.frenchPress.rawValue
        } else if brewModel == .chemex && grinderSelection == "OXO" {
            return oxo.chemex.rawValue
        } else if brewModel == .chemex && grinderSelection == "Cuisinart" {
            return cuisinart.chemex.rawValue
        } else if brewModel == .chemex && grinderSelection == "Baratza" {
            return baratza.drip.rawValue
        } else if brewModel == .drip && grinderSelection == "Cuisinart" {
            return cuisinart.drip.rawValue
        } else if brewModel == .drip && grinderSelection == "OXO" {
            return oxo.drip.rawValue
        } else if brewModel == .drip && grinderSelection == "Baratza" {
            return baratza.drip.rawValue
        } else if brewModel == .mokaPot && grinderSelection == "Baratza" {
            return baratza.mokaPot.rawValue
        } else if brewModel == .mokaPot && grinderSelection == "OXO" {
            return oxo.mokaPot.rawValue
        } else if brewModel == .mokaPot && grinderSelection == "Cuisinart" {
            return cuisinart.mokaPot.rawValue
        } else if brewModel == .aeroPress && grinderSelection == "Cuisinart" {
            return cuisinart.aeroPress.rawValue
        } else if brewModel == .aeroPress && grinderSelection == "OXO" {
            return oxo.aeroPress.rawValue
        } else if brewModel == .aeroPress && grinderSelection == "Baratza" {
            return baratza.aeroPress.rawValue
        } else if brewModel == .coldBrew && grinderSelection == "Cuisinart" {
            return cuisinart.coldBrew.rawValue
        } else if brewModel == .coldBrew && grinderSelection == "OXO" {
            return oxo.coldBrew.rawValue
        } else if brewModel == .coldBrew && grinderSelection == "Baratza" {
            return baratza.coldBrew.rawValue
        }
        return ""
    }
    
    enum baratza: String {
        case frenchPress = "28"
        case mokaPot = "13"
        case chemex = "20"
        case drip = "18"
        case aeroPress = "12"
        case coldBrew = "35"
    }
    
    enum cuisinart: String {
        case frenchPress = "15"
        case mokaPot = "6"
        case chemex = "12"
        case drip = "9"
        case aeroPress = "5"
        case coldBrew = "17"
    }
    
    enum oxo: String {
        case frenchPress = "12"
        case mokaPot = "5"
        case chemex = "10"
        case drip = "7"
        case aeroPress = "4"
        case coldBrew = "14"
    }
    
    var computeGrinds: Double {
        
        // transforms tbsp = 1 to grams (= 6.4 ?)
        var unitValue: Double = 1.0
        if grindsSelection == "grams" {
            unitValue = 6.4
        }
        
        switch brewModel {
        case .frenchPress, .chemex:
            return (2.5 * unitValue * Double(waterAmount))
        case .drip :
            return Double(2 * unitValue * Double(waterAmount))
        case .mokaPot:
            return Double(1 * unitValue * Double(waterAmount))
        case .aeroPress:
            return Double(1.6 * unitValue * Double(waterAmount))
        case .coldBrew:
            return Double(3.24 * unitValue * Double(waterAmount))
        }
    }
    
    var body: some View {
        VStack {
            Spacer()
            HStack {
                //                Text("").padding(20)
                Text("How many cups do you want to brew?")
                
                Picker("", selection: $waterAmount) {
                    ForEach(1...15, id: \.self){
                        Text("\($0)")
                    }
                }
                //                Spacer()
            }.padding()
                .overlay (
                    RoundedRectangle(cornerRadius: 16)
                        .stroke(Color("Custom Color"), lineWidth: 8)
                )
            
            //            gif/image conditionals
            if (brewModel == .frenchPress) {
                LottieView(name: "frenchpress", loopMode: .loop)
            } else if brewModel == .chemex {
                LottieView(name: "pourover", loopMode: .loop)
            } else if brewModel == .aeroPress {
                LottieView(name: "aeropress", loopMode: .loop)
            } else if brewModel == .mokaPot {
                LottieView(name: "mokapot", loopMode: .loop)
            } else if brewModel == .drip {
                LottieView(name: "coffelife", loopMode: .loop)
                
            } else if brewModel == .coldBrew {
                LottieView(name: "coldbrew", loopMode: .loop)
                
            }
            
            let formatted = String(format: "%.2f", computeGrinds)
            HStack {
                Text("**\(formatted)**")
                //                    .font(.system(size: 22))
                Picker("Select Grinds Units: ", selection: $grindsSelection, content: {
                    ForEach(grindOptions, id: \.self) {
                        Text($0)
                        
                    }
                })
                Text("coffee grinds")
                //                    .font(.system(size: 22))
            }
            .padding()
            .overlay (
                RoundedRectangle(cornerRadius: 16)
                    .stroke(Color("Custom Color"), lineWidth: 8)
            )
            .padding(6
            )
            HStack {
                //                Text("\(grinderOutput())")
                //                    .font(.system(size: 22))
                Picker("Select brand of grinder: ", selection: $grinderSelection, content: {
                    ForEach(grinderOptions, id: \.self) {
                        Text($0)
                        
                    }
                })
                Text("grinder setting: **\(grinderOutput())**")
                //                    .font(.system(size: 22))
                
            }
            .padding()
            .overlay (
                RoundedRectangle(cornerRadius: 16)
                    .stroke(Color("Custom Color"), lineWidth: 8)
            )
            
            
            //            .padding()
            //            .overlay (
            //                RoundedRectangle(cornerRadius: 16)
            //                    .stroke(Color("Custom Color"), lineWidth: 8)
            //            )
            
            
            .padding(20)
            
            
        }
        
        Spacer()
        //            Button(favorites.contains(brew) ? "Remove from Favorites" : "Add to Favorites") {
        //                        if favorites.contains(brew) {
        //                            favorites.remove(brew)
        //                        } else {
        //                            favorites.add(brew)
        //                        }
        //                    }
        //                        .buttonStyle(.borderedProminent)
        //                        .padding()
    }
}


struct Water_Previews: PreviewProvider {
    static var previews: some View {
        //        if need to delete favorites, can delete this navigation view too if not using nav view in this water view
        NavigationView {
            Water(brewModel: .drip)
            //                .environmentObject(Favorites())
        }
    }
}

