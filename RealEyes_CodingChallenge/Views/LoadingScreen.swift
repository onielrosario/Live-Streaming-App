//
//  LoadingScreen.swift
//  RealEyes_CodingChallenge
//
//  Created by Oniel Rosario on 8/22/19.
//  Copyright © 2019 Oniel Rosario. All rights reserved.
//

import UIKit


class LoadingScreen: UIView {
    lazy var activityIndicator: UIActivityIndicatorView = {
        var indicator = UIActivityIndicatorView(style: .whiteLarge)
        indicator.translatesAutoresizingMaskIntoConstraints = false
        return indicator
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
      super.init(coder: aDecoder)
         commonInit()
    }
    
    private func  commonInit() {
        backgroundColor = .black
        setupContrains()
    }
    
    private func setupContrains() {
          addSubview(activityIndicator)
        activityIndicator.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor).isActive = true
        activityIndicator.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor).isActive = true
        activityIndicator.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor).isActive = true
        activityIndicator.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor).isActive = true
    }
}
