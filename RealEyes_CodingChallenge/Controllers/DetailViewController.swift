//
//  DetailViewController.swift
//  RealEyes_CodingChallenge
//
//  Created by Oniel Rosario on 8/21/19.
//  Copyright © 2019 Oniel Rosario. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    let avPlayer = PlayerView()
    var video: VideoClip!

    override func viewDidLoad() {
        super.viewDidLoad()
    setupUI()
    }
    
    private func setupUI() {
          view.addSubview(avPlayer)
    }
    
    override var shouldAutorotate: Bool {
        return false
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return .landscapeRight
    }
    
    override var preferredInterfaceOrientationForPresentation: UIInterfaceOrientation {
        return .landscapeRight
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }

}
