//
//  DeclarativeModalViewController.swift
//  Half Modal
//
//  Created by Geri Borbás on 30/03/2022.
//

import UIKit


class DeclarativeModalViewController: UIViewController {
    
    lazy var body = UIStackView()
        .vertical()
        .views(
            UIView()
                .with {
                    $0.backgroundColor = UIColor.clear
                },
            UIView()
                .with {
                    $0.backgroundColor = UIColor.white
                    $0.layer.maskedCorners = [ .layerMinXMinYCorner, .layerMaxXMinYCorner ]
                    $0.layer.cornerRadius = 142 / 3
                    $0.addSubview(
                        UIView()
                            .with {
                                $0.backgroundColor = UIColor.lightGray
                                $0.layer.cornerRadius = 5 / 2
                            }
                            .withConstraints {
                                $0.top(to: $1, inset: 8)
                                $0.centerX(to: $1)
                                $0.set(width: 60)
                                $0.set(height: 5)
                            }
                    )
                }
                .withConstraints {
                    $0.set(height: 400)
                }
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
}
