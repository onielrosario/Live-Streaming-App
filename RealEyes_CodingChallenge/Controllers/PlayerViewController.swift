//
//  PlayerViewController.swift
//  RealEyes_CodingChallenge
//
//  Created by Oniel Rosario on 8/26/19.
//  Copyright © 2019 Oniel Rosario. All rights reserved.
//

//import UIKit
import AVKit

class PlayerViewController: AVPlayerViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      player?.play()
    }
    

}
