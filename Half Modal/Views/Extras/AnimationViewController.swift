//
//  AnimationViewController.swift
//  Half Modal
//
//  Created by Geri Borbás on 31/03/2022.
//

import UIKit


class AnimationViewController: UIViewController {
    
    lazy var hole = UIView()
        .with {
            $0.backgroundColor = UIColor.white
        }
    
    var barWidth: NSLayoutConstraint!
    lazy var bar = UIView()
        .with {
            $0.backgroundColor = UIColor.lightGray
            $0.layer.cornerRadius = 5 / 2
        }
        .withConstraints {
            $0.centerX(to: $1)
            $0.top(to: $1, inset: 8)
            $0.set(height: 5)
            self.barWidth = $0.set(width: 0)
        }
    
    lazy var content = UIView()
        .with {
            $0.backgroundColor = UIColor.white
            $0.layer.maskedCorners = [ .layerMinXMinYCorner, .layerMaxXMinYCorner ]
            $0.layer.cornerRadius = 0
            $0.addSubview(bar)
        }
        .withConstraints {
            $0.set(height: 400)
        }
    
    lazy var body = UIStackView()
        .vertical()
        .views(
            hole,
            content
        )
        .withConstraints {
            $0.pin(to: self.view, insets: .zero)
        }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(body)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        view.dropShadowView?.layer.shadowColor = UIColor.clear.cgColor
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        // Animate.
        let startDelay = 0.5
        CATransaction.begin()
        CATransaction.setAnimationTimingFunction(CAMediaTimingFunction(controlPoints: 0.1, 0.9, 0.3, 1.0))
        UIView.animate(
            withDuration: 0.6,
            delay: startDelay,
            options: []
        ) {
            self.hole.layer.opacity = 0
            self.hole.layer.cornerRadius = 200
            self.hole.layer.transform = CATransform3DMakeScale(0.2, 0.2, 1.0)
        }
        UIView.animate(
            withDuration: 0.8,
            delay: startDelay + 0.8,
            options: []
        ) {
            self.content.layer.cornerRadius = 142 / 3
        }
        UIView.animate(
            withDuration: 0.8,
            delay: startDelay + 1.0,
            options: []
        ) {
            self.barWidth.constant = 60
            self.view.layoutIfNeeded()
        }
        CATransaction.commit()
    }
}


extension UIWindow {
    
    static let speed = Float(1 / 1)
}
