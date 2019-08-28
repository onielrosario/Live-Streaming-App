//
//  DetailViewController.swift
//  RealEyes_CodingChallenge
//
//  Created by Oniel Rosario on 8/21/19.
//  Copyright © 2019 Oniel Rosario. All rights reserved.
//

import UIKit

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
        viewModel.avPlayer.setupVideoContent(video: videoSource.link)
        viewModel.cancel(self, action: #selector(cancel))
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
    
}
