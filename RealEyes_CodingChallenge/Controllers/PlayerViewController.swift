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
        super.viewWillAppear(animated)
    }
    
    private func setupUI() {
        AppUtility.lockOrientationWithRotation(.landscape, andRotateTo: .landscapeRight)
        if let player = player {
            player.play()
        } else {
            presentAlertWithAction(title: "Source url has expired", message: "OK")
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        AppUtility.lockOrientation(orientation: .all)
    }
}
