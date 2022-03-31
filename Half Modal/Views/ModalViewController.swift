//
//  ModalViewController.swift
//  Half Modal
//
//  Created by Geri Borbás on 31/03/2022.
//

import UIKit


class ModalViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let hole = UIView()
        hole.backgroundColor = UIColor.clear
        
        let content = UIView()
        content.backgroundColor = UIColor.white
        content.layer.maskedCorners = [ .layerMinXMinYCorner, .layerMaxXMinYCorner ]
        content.layer.cornerRadius = 142 / 3
        
        let bar = UIView()
        bar.backgroundColor = UIColor.lightGray
        bar.layer.cornerRadius = 5 / 2
        content.addSubview(bar)
        
        let body = UIStackView()
        body.axis = .vertical
        body.addArrangedSubview(hole)
        body.addArrangedSubview(content)
        view.addSubview(body)
        
        bar.translatesAutoresizingMaskIntoConstraints = false
        bar.topAnchor.constraint(equalTo: content.topAnchor, constant: 8).isActive = true
        bar.centerXAnchor.constraint(equalTo: content.centerXAnchor, constant: 0).isActive = true
        bar.widthAnchor.constraint(equalToConstant: 60).isActive = true
        bar.heightAnchor.constraint(equalToConstant: 5).isActive = true
        
        content.translatesAutoresizingMaskIntoConstraints = false
        content.heightAnchor.constraint(equalToConstant: 400).isActive = true
        
        body.translatesAutoresizingMaskIntoConstraints = false
        body.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        body.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        body.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
        body.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        view.dropShadowView?.layer.shadowColor = UIColor.clear.cgColor
    }
}
