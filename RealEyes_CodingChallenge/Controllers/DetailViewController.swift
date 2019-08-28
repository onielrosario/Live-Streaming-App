//
//  DetailViewController.swift
//  RealEyes_CodingChallenge
//
//  Created by Oniel Rosario on 8/21/19.
//  Copyright © 2019 Oniel Rosario. All rights reserved.
//

import UIKit
import AVKit

class DetailViewController: UIViewController {
    private var viewModel: DetailVCViewModeling = DetailVCViewModel()
    let indicatorView = LoadingScreen()
    var videoSource: VideoClip!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupConstraints()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        AppUtility.lockOrientationWithRotation(.landscape, andRotateTo: .landscapeRight)
    }
    
    private func setupUI() {
        viewModel.play(videoSource.link)
        viewModel.playPauseButton(self, action: #selector(playPausePressed))
        viewModel.cancel(self, action: #selector(cancel))
        viewModel.seek(self, action: #selector(handleStreamBar))
        viewModel.skip(self, action: #selector(skip))
        viewModel.rewind(self, action: #selector(goBackButton))
    }
    
    override var shouldAutorotate: Bool {
        return false
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return .landscapeRight
    }
    
    override var preferredInterfaceOrientationForPresentation: UIInterfaceOrientation {
        return .landscapeRight
    }
    
    @objc private func cancel() {
        dismiss(animated: true)
        viewModel.avPlayer.avPlayer.playerLayer.player = nil
    }
    
    private func setupConstraints() {
        viewModel.avPlayer.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(viewModel.avPlayer)
        NSLayoutConstraint.activate([
            viewModel.avPlayer.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            viewModel.avPlayer.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            viewModel.avPlayer.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            viewModel.avPlayer.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
            ])
    }
    
    @objc private func handleStreamBar() {
        if let duration = viewModel.avPlayer.avPlayer.playerLayer.player?.currentItem?.duration {
            let totalSecconds = CMTimeGetSeconds(duration)
            let value = Float64(viewModel.avPlayer.streamBar.value) * totalSecconds
            let seekTime = CMTime(value: Int64(value), timescale: 1)
            viewModel.avPlayer.avPlayer.playerLayer.player?.seek(to: seekTime, completionHandler: { (completedSeek) in
            })
        }
    }
    
    @objc private func skip() {
        if let duration = viewModel.avPlayer.avPlayer.playerLayer.player?.currentItem?.duration {
            let totalSecconds = CMTimeGetSeconds(duration)
            let value = Float64(viewModel.avPlayer.streamBar.value) * totalSecconds
            let seekTime = CMTime(value: Int64(value + 15), timescale: 1)
            viewModel.avPlayer.avPlayer.playerLayer.player?.seek(to: seekTime, completionHandler: { (completedSeek) in
            })
        }
    }
    
    @objc private func goBackButton() {
        if let duration = viewModel.avPlayer.avPlayer.playerLayer.player?.currentItem?.duration {
            let totalSecconds = CMTimeGetSeconds(duration)
            let value = Float64(viewModel.avPlayer.streamBar.value) * totalSecconds
            let seekTime = CMTime(value: Int64(value - 15), timescale: 1)
            viewModel.avPlayer.avPlayer.playerLayer.player?.seek(to: seekTime, completionHandler: { (completedSeek) in
            })
        }
    }
    
    @objc private func playPausePressed() {
        if viewModel.isBuffering {
            viewModel.avPlayer.playButton.setImage(UIImage(named: "pause"), for: .normal)
            viewModel.avPlayer.avPlayer.playerLayer.player?.play()
        } else {
            viewModel.avPlayer.playButton.setImage(UIImage(named: "play48"), for: .normal)
            viewModel.avPlayer.avPlayer.playerLayer.player?.pause()
        }
        viewModel.isBuffering = !viewModel.isBuffering
    }
    
}
