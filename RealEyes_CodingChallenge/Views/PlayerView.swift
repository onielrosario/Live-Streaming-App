//
//  PlayerView.swift
//  RealEyes_CodingChallenge
//
//  Created by Oniel Rosario on 8/21/19.
//  Copyright © 2019 Oniel Rosario. All rights reserved.
//

import AVKit
import UIKit

class PlayerView: UIView {
    @IBOutlet var contentView: UIView!
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var rewindButton: UIButton!
    @IBOutlet weak var fastForwardButton: UIButton!
    @IBOutlet weak var streamBar: UISlider!
    @IBOutlet weak var cancelButton: UIButton!
    var video: VideoClip! {
        didSet {
            setupVideoContent(video: self.video)
            addSubview(contentView)
//            setupContrains()
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
       commonInit()
//      setupContrains()
    }

    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
//      setupContrains()
    }
    
    private func  commonInit() {
        Bundle.main.loadNibNamed("CustomPlayer", owner: self, options: nil)
    }
    
    private func setupVideoContent(video: VideoClip) {
        let player = AVPlayer(url: video.link)
        let playerLayer = AVPlayerLayer(player: player)
       self.layer.addSublayer(playerLayer)
        playerLayer.frame = contentView.frame
        player.play()
    }
    
    private func  setupContrains() {
    addSubview(contentView)
    contentView.translatesAutoresizingMaskIntoConstraints = false
    contentView.widthAnchor.constraint(equalTo: self.safeAreaLayoutGuide.widthAnchor, multiplier: 0).isActive = true
    contentView.heightAnchor.constraint(equalTo: self.safeAreaLayoutGuide.heightAnchor, multiplier: 0).isActive = true
    contentView.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor).isActive = true
    contentView.centerYAnchor.constraint(equalTo:  self.safeAreaLayoutGuide.centerYAnchor).isActive = true
    }
    
}
