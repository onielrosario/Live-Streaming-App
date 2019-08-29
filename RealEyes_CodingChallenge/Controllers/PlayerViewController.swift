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
    
    override func viewWillAppear(_ animated: Bool) {
         AppUtility.lockOrientationWithRotation(.landscape, andRotateTo: .landscapeRight)
        super.viewWillAppear(animated)
    }
    
    private func setupUI() {
        player?.play()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        AppUtility.lockOrientation(orientation: .all)
    }
}
