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
    @IBOutlet weak var initialTimeframe: UILabel!
    @IBOutlet weak var totalTimeframe: UILabel!
    
    
    lazy var avPlayer: AVPlayerView = {
        let player = AVPlayerView()
        player.translatesAutoresizingMaskIntoConstraints = false
        return player
    }()
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        commonInit()
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    private func  commonInit() {
        Bundle.main.loadNibNamed("CustomPlayer", owner: self, options: nil)
        setupPlayerContraints()
        setupContrains()
        backgroundColor = .black
    }
    
    func setupVideoContent(video: URL) {
        avPlayer.playerLayer.player = AVPlayer(url: video)
        avPlayer.playerLayer.player?.play()
    }
    
    private func setupPlayerContraints() {
        addSubview(avPlayer)
        NSLayoutConstraint.activate([
            avPlayer.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            avPlayer.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor),
            avPlayer.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor),
            avPlayer.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor)
            ])
    }
    
    private func  setupContrains() {
        avPlayer.addSubview(contentView)
        contentView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            contentView.topAnchor.constraint(equalTo: avPlayer.topAnchor),
            contentView.bottomAnchor.constraint(equalTo: avPlayer.bottomAnchor),
            contentView.leadingAnchor.constraint(equalTo: avPlayer.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: avPlayer.trailingAnchor)
            ])
    }
}
