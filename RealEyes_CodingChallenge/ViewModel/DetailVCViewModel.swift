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
    func playPauseButton(_ target: DetailViewController, action: Selector)
    func cancel(_ viewController: DetailViewController, action: Selector)
    func seek(_ viewController: DetailViewController, action: Selector)
    func skip(_ viewController: DetailViewController, action: Selector)
    func rewind(_ viewController: DetailViewController, action: Selector)
    var avPlayer: PlayerView { get }
    var isBuffering: Bool { get set }
}

class DetailVCViewModel: DetailVCViewModeling {
    func rewind(_ viewController: DetailViewController, action: Selector) {
        avPlayer.rewind(viewController: viewController, action: action)
    }
    
    func skip(_ viewController: DetailViewController, action: Selector) {
        avPlayer.skipSeconds(viewController: viewController, action: action)
    }
    
    var isBuffering: Bool
    
    
    func seek(_ viewController: DetailViewController, action: Selector) {
        avPlayer.streamBar.addTarget(viewController, action: action, for: .valueChanged)
    }
    
    func cancel(_ viewController: DetailViewController, action: Selector) {
        avPlayer.cancelButton.addTarget(viewController, action: action, for: .touchUpInside)
    }
    
    func play(_ link: URL) {
        avPlayer.playVideoContent(video: link)
        
    }
    
    var avPlayer: PlayerView
    
    func playPauseButton(_ target: DetailViewController, action: Selector) {
        avPlayer.playButton.addTarget(target, action: action, for: .touchUpInside)
    }
    
    init(avPlayer: PlayerView = PlayerView()) {
        self.avPlayer = avPlayer
        self.isBuffering = avPlayer.isBuffering
    }
}
