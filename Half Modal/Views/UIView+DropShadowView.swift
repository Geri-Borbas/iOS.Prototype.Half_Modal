//
//  UIView+DropShadowView.swift
//  Half Modal
//
//  Created by Geri Borbás on 30/03/2022.
//

import UIKit


extension UIView {

	var dropShadowView: UIView? {
		superview?.firstDropShadowViewChild ?? superview?.dropShadowView
	}

	fileprivate var firstDropShadowViewChild: UIView? {
		subviews.first(where: { $0.isDropShadowView }) ?? subviews.compactMap { $0.firstDropShadowViewChild }.first
	}
	
	fileprivate var isDropShadowView: Bool {
		"\(type(of: self))" == "UIDropShadowView"
	}
}
