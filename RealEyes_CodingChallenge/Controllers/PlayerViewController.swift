//
//  PlayerViewController.swift
//  RealEyes_CodingChallenge
//
//  Created by Oniel Rosario on 8/26/19.
//  Copyright © 2019 Oniel Rosario. All rights reserved.
//

import AVKit

class PlayerViewController: AVPlayerViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
     setupUI()
    }
    
    private func setupUI() {
        AppUtility.lockOrientationWithRotation(.landscape, andRotateTo: .landscapeRight)
        player?.play()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        AppUtility.lockOrientation(orientation: .all)
    }
}
