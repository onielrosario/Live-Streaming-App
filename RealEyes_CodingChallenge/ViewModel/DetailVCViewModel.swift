//
//  DetailVCViewModel.swift
//  RealEyes_CodingChallenge
//
//  Created by Oniel Rosario on 8/26/19.
//  Copyright © 2019 Oniel Rosario. All rights reserved.
//

import Foundation
import AVKit


protocol DetailVCViewModeling {
    func play(_ link: URL)
    func pause()
    func cancel(_ viewController: DetailViewController, action: Selector)
    var avPlayer: PlayerView { get }
}

class DetailVCViewModel: DetailVCViewModeling {
    func cancel(_ viewController: DetailViewController, action: Selector) {
        avPlayer.cancelButton.addTarget(viewController, action: action, for: .touchUpInside)
    }
    
    func play(_ link: URL) {
        avPlayer.setupVideoContent(video: link)
    }
    
    var avPlayer: PlayerView
    
    func pause() {
        print("pause")
    }
    
    init(avPlayer: PlayerView = PlayerView()) {
        self.avPlayer = avPlayer
    }
}
