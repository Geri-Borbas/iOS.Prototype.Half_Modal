//
//  MenuViewController.swift
//  Half Modal
//
//  Created by Geri Borbás on 30/03/2022.
//

import UIKit


class MenuViewController: UIViewController {
    
    lazy var body = UIStackView()
        .vertical(spacing: 10)
        .views(
            UIButton()
                .with(title: "Present")
                .onTouchUpInside { [unowned self] in
                    self.present(
                        ModalViewController(),
                        animated: true
                    )
                },
            UIView
                .spacer
        )
        .withConstraints {
            $0.pin(
                to: self.view.safeAreaLayoutGuide,
                insets: UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)
            )
        }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(body)
        view.backgroundColor = .systemBackground
    }
}
