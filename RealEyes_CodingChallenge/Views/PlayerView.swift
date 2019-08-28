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
    
    var isBuffering = false
    
    lazy var loadingSreen: LoadingScreen = {
        let loading = LoadingScreen()
        loading.activityIndicator.startAnimating()
        return loading
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
        setupLoadingContrains()
        backgroundColor = .black
    }
    
    func playVideoContent(video: URL) {
        avPlayer.playerLayer.player = AVPlayer(url: video)
        avPlayer.playerLayer.player?.addObserver(self, forKeyPath: "currentItem.loadedTimeRanges", options: .new, context: nil)
        // track player progress
        trackVideoProgress()
        avPlayer.playerLayer.player?.play()
    }
    
    private func setupLoadingContrains() {
        addSubview(loadingSreen)
        loadingSreen.frame = contentView.frame
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
        setupGradientConstrains()
    }
    
    private func setupGradientConstrains() {
        let gradient = CAGradientLayer()
        gradient.frame = contentView.frame
        gradient.colors = [UIColor.clear.cgColor, UIColor.black.cgColor]
        gradient.locations = [0.7, 1.2]
        contentView.layer.addSublayer(gradient)
    }
    
    override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
        if keyPath == "currentItem.loadedTimeRanges" {
            loadingSreen.removeFromSuperview()
            isBuffering = true
            if let duration = avPlayer.playerLayer.player?.currentItem?.duration {
                let time = CMTimeGetSeconds(duration)
                if time.isInfinite || time.isNaN {
                    totalTimeframe.text = "00:00"
                } else {
                    let minutes = Int(time) / 60
                    let seconds = Int(time) % 60
                    totalTimeframe.text = "\(String(format: "%02d", minutes)):\(seconds)"
                }
            }
        }
    }
    
    private func trackVideoProgress() {
        let interval = CMTime(value: 1, timescale: 2)
        avPlayer.playerLayer.player?.addPeriodicTimeObserver(forInterval: interval, queue: DispatchQueue.main, using: { (progressTime) in
            let seconds = CMTimeGetSeconds(progressTime)
            let secondsFormat = String(format: "%02d", Int(seconds) % 60)
            let minutesFormat = String(format: "%02d", Int(seconds) / 60)
            self.initialTimeframe.text = minutesFormat + ":" + secondsFormat
            
            //slider
            if let duration = self.avPlayer.playerLayer.player?.currentItem?.duration {
                let durationSeconds = CMTimeGetSeconds(duration)
                self.streamBar.value = Float(seconds / durationSeconds)
            } else {
                self.streamBar.value = 0
            }
        })
    }
    
    func skipSeconds(viewController: DetailViewController, action: Selector) {
        fastForwardButton.addTarget(viewController, action: action, for: .touchUpInside)
    }
    
    func rewind(viewController: DetailViewController, action: Selector) {
        rewindButton.addTarget(viewController, action: action, for: .touchUpInside)
    }
}
