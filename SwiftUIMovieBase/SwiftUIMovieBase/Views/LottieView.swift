//
//  LottieView.swift
//  SwiftUIMovieBase

import Lottie
import SwiftUI

struct LottiView: UIViewRepresentable {

    typealias UIViewType = UIView

    @State var animationNamed: String = "loading_animation"

    func makeUIView(context: Context) -> UIView {
        let containerView = UIView()

        let animationView = AnimationView()
        animationView.animation = Animation.named(animationNamed)
        animationView.contentMode = .scaleAspectFit
        animationView.loopMode = .loop

        animationView.translatesAutoresizingMaskIntoConstraints = false
        containerView.addSubview(animationView)
        NSLayoutConstraint.activate(
            [
                animationView.widthAnchor.constraint(equalTo: containerView.widthAnchor),
                animationView.heightAnchor.constraint(equalTo: containerView.heightAnchor)
            ]
        )

        animationView.play()

        return containerView
    }

    func updateUIView(_ uiView: UIView, context: Context) {

    }
}

struct LottieView_Previews: PreviewProvider {

    static var previews: some View {
        LottiView(animationNamed: "loading_animation")
    }
}
