//
//  DetailViewController.swift
//  RealEyes_CodingChallenge
//
//  Created by Oniel Rosario on 8/21/19.
//  Copyright © 2019 Oniel Rosario. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    lazy var avPlayer = PlayerView(frame: CGRect(x: 0, y: 0, width: self.view.bounds.width, height: self.view.bounds.height))
    let indicatorView = LoadingScreen()
    var video: VideoClip!

    override func viewDidLoad() {
        super.viewDidLoad()
         setupUI()
    }
    
    private func setupUI() {
    avPlayer.video = video
    avPlayer.cancelButton.addTarget(self, action: #selector(cancel), for: .touchUpInside)
//    avPlayer.contentMode = .scaleAspectFit
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
    
    @objc private func cancel() {
     dismiss(animated: true)
    }

}
