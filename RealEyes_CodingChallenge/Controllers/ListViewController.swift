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
        cell.video = video
        return cell
    }
    
  
    
}
