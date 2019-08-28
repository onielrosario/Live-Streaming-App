//
//  CollectionViewCell.swift
//  RealEyes_CodingChallenge
//
//  Created by Oniel Rosario on 8/22/19.
//  Copyright © 2019 Oniel Rosario. All rights reserved.
//

import UIKit

class MainListCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var videoImage: UIImageView!
    @IBOutlet weak var videoTitle: UILabel!
    @IBOutlet weak var videoDuration: UILabel!
//    var cellVideo: VideoClip! {
//        didSet {
//            videoImageButton.setImage(UIImage(named: self.cellVideo.thumbNail.path), for: .normal)
//            videoTitle.text = self.cellVideo.name
//        }
//    }
    
//    func configureCell(video: VideoClip, action: Selector, tag: Int, owner: ListViewController) {
//        cellVideo = video
//        videoImageButton.tag = tag
//        videoImageButton.addTarget(owner, action: action, for: .touchUpInside)
//    }
    
    func updateWith(source: VideoClip) {
        videoImage.image = UIImage(named: source.thumbNail.path)
        videoTitle.text = source.name
    }
}
