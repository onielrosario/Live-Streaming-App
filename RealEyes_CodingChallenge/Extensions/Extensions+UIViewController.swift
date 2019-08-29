//
//  Extensions+UIViewController.swift
//  RealEyes_CodingChallenge
//
//  Created by Oniel Rosario on 8/22/19.
//  Copyright © 2019 Oniel Rosario. All rights reserved.
//

import AVKit


extension UIViewController {
    func presentPlayer(videoUrl: URL) {
       let playerViewController = PlayerViewController()
        let player = AVPlayer(url: videoUrl)
        playerViewController.player = player
        present(playerViewController, animated: true)
    }
}
