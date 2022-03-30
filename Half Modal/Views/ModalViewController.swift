//
//  ModalViewController.swift
//  Half Modal
//
//  Created by Geri Borbás on 30/03/2022.
//

import UIKit


class ModalViewController: UIViewController {
	
	lazy var emptyView = UIView().with {
		$0.backgroundColor = UIColor.clear
	}
	
	lazy var contentView = UIView()
		.with {
			$0.backgroundColor = UIColor.white
			$0.layer.maskedCorners = [ .layerMinXMinYCorner, .layerMaxXMinYCorner ]
			$0.layer.cornerRadius = 25
		}
	
	lazy var body = UIStackView()
		.vertical(spacing: 10)
		.views(
			emptyView,
			contentView
		)
	
	override func viewDidLoad() {
		super.viewDidLoad()
		view.addSubview(body)
		body.pin(to: view, insets: .zero)
		contentView.set(height: 400)
	}
	
	override func viewDidLayoutSubviews() {
		super.viewDidLayoutSubviews()
		view.dropShadowView?.layer.shadowColor = UIColor.clear.cgColor
	}
}
