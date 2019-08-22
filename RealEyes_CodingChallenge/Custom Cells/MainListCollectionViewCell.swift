//
//  CollectionViewCell.swift
//  RealEyes_CodingChallenge
//
//  Created by Oniel Rosario on 8/22/19.
//  Copyright © 2019 Oniel Rosario. All rights reserved.
//

import UIKit

class MainListCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var videoImageButton: UIButton!
    @IBOutlet weak var videoTitle: UILabel!
    @IBOutlet weak var videoDuration: UILabel!
    
    var video: VideoClip! {
        didSet {
            videoImageButton.setImage(UIImage(named: self.video.thumbNail.path), for: .normal)
            videoTitle.text = self.video.name
        }
    }
 
}
