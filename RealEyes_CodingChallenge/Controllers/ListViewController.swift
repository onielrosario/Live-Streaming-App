//
//  ViewController.swift
//  RealEyes_CodingChallenge
//
//  Created by Oniel Rosario on 8/20/19.
//  Copyright © 2019 Oniel Rosario. All rights reserved.
//

import UIKit
import AVKit

class ListViewController: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    private let viewModel: ListVCViewModeling = ListVCViewModel()
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
      AppUtility.lockOrientationWithRotation(.portrait, andRotateTo: .portrait)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        AppUtility.lockOrientation(orientation: .all)
    }
    private func setupUI() {
        collectionView.delegate = self
        collectionView.dataSource = self
    }
}

extension ListViewController: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return viewModel.sources.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionCell", for: indexPath) as? MainListCollectionViewCell else {
            fatalError("error dequeuing cell")
        }
        let video = viewModel.sources[indexPath.row]
       cell.updateWith(source: video)
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: UIScreen.main.bounds.width - 30, height: 200)
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        guard let url = URL(string: viewModel.sources[indexPath.row].link.absoluteString) else {
            fatalError("links does not work or has expired")
        }
        presentPlayer(videoUrl: url)
    }
    override var preferredInterfaceOrientationForPresentation: UIInterfaceOrientation {
        return .portrait
    }
}
