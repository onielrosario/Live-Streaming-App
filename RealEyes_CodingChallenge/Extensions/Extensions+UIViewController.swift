//
//  Extensions+UIViewController.swift
//  RealEyes_CodingChallenge
//
//  Created by Oniel Rosario on 8/22/19.
//  Copyright © 2019 Oniel Rosario. All rights reserved.
//

import UIKit


extension UIViewController {
    func presentPlayer(video: VideoClip) {
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        let detailPlayer = storyboard.instantiateViewController(withIdentifier: "DetailVC") as! DetailViewController
        detailPlayer.video = video
        present(detailPlayer, animated: true)
    }
}
