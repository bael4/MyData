//
//  UIView + Extension.swift
//  MyData
//
//  Created by Баэль Рыспеков on 21/3/23.
//

import  UIKit


extension UIView {
    func addView (_ view: UIView){
        self.addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
    }
}
