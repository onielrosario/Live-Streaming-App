//
//  Extensions+UICollectionView.swift
//  RealEyes_CodingChallenge
//
//  Created by Oniel Rosario on 8/22/19.
//  Copyright © 2019 Oniel Rosario. All rights reserved.
//


import UIKit


extension UICollectionView {
  
}

extension UICollectionViewFlowLayout {
    var collectionViewWithoutInsets: CGFloat {
        get {
            guard let collectionView = self.collectionView else { return 0 }
            let collectionViewSize = collectionView.bounds.size
            let widthWithoutInsets = collectionViewSize.width
                - self.sectionInset.left - self.sectionInset.right
                - collectionView.contentInset.left - collectionView.contentInset.right
            return widthWithoutInsets
        }
    }
}
