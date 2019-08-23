//
//  ViewController.swift
//  RealEyes_CodingChallenge
//
//  Created by Oniel Rosario on 8/20/19.
//  Copyright © 2019 Oniel Rosario. All rights reserved.
//

import UIKit

class ListViewController: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    let source = Source()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
      setupUI()
    }
    
    
    private func setupUI() {
        collectionView.delegate = self
        collectionView.dataSource = self
        AppUtility.lockOrientation(orientation: .portrait)
    }
}

extension ListViewController: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return source.sources.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionCell", for: indexPath) as? MainListCollectionViewCell else {
            fatalError("error dequeuing cell")
        }
        let video = source.sources[indexPath.row]
        cell.configureCell(video: video, action: #selector(displayVideo), tag: indexPath.row, owner: self)
        return cell
    }
    
    @objc private func displayVideo(button: UIButton) {
        presentPlayer(video: source.sources[button.tag])
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: UIScreen.main.bounds.width - 30, height: 200)
    }
    
    override func willTransition(to newCollection: UITraitCollection, with coordinator: UIViewControllerTransitionCoordinator) {
        collectionView.collectionViewLayout.invalidateLayout()
    }

}
