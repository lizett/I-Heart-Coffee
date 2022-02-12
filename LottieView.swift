//
//  LottieView.swift
//  I-heart-coffee
//
//  Created by Susan Tovar on 2/11/22.
//

import SwiftUI
import Lottie

//struct LottieView: UIViewRepresentable {
//
//    @Binding var animationInProgress: Bool
//
//    func makeUIView(context: Context) -> some AnimationView {
//        let lottieAnimationView = AnimationView(name: "pourover")
//        lottieAnimationView.play { complete in
//            if complete {
//                animationInProgress = false
//            }
//
//        }
//        return lottieAnimationView
//    }
//    func updateUIView(_ uiView: UIViewType, context: Context) {
//
//    }
//}
struct LottieView: UIViewRepresentable {
    var name: String
    var loopMode: LottieLoopMode = .playOnce
    
    var animationView = AnimationView()
    
    func makeUIView(context: UIViewRepresentableContext<LottieView>) -> UIView {
        let view = UIView(frame: .zero)
        
        animationView.animation = Animation.named(name)
        animationView.contentMode = .scaleAspectFit
        animationView.loopMode = loopMode
        animationView.play()
        
        animationView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(animationView)
        
        NSLayoutConstraint.activate([
            animationView.heightAnchor.constraint(equalTo: view.heightAnchor),
            animationView.widthAnchor.constraint(equalTo: view.widthAnchor)
        ])
        
        return view
    }
    
    func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<LottieView>) {}
}
