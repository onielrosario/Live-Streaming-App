//
//  PlayerModel.swift
//  RealEyes_CodingChallenge
//
//  Created by Oniel Rosario on 8/21/19.
//  Copyright © 2019 Oniel Rosario. All rights reserved.
//

import Foundation
import AVKit


class Player {
   
    init(player: PlayerView = PlayerView(), video: VideoClip, owner: DetailViewController) {
      let player = AVPlayer(url: video.link)
      let playerLayer = AVPlayerLayer(player: player)
      owner.view.layer.addSublayer(playerLayer)
      playerLayer.frame = CGRect(x: owner.view.center.x, y: owner.view.center.y, width: owner.view.bounds.width, height: owner.view.bounds.height)
      player.play()
    }
    
    
    func createThumbnailOfVideoFromRemoteUrl(url: String) -> UIImage? {
        let asset = AVAsset(url: URL(string: url)!)
        let assetImgGenerate = AVAssetImageGenerator(asset: asset)
        assetImgGenerate.appliesPreferredTrackTransform = true
        //Can set this to improve performance if target size is known before hand
        //assetImgGenerate.maximumSize = CGSize(width,height)
        let time = CMTimeMakeWithSeconds(1.0, preferredTimescale: 600)
        do {
            let img = try assetImgGenerate.copyCGImage(at: time, actualTime: nil)
            let thumbnail = UIImage(cgImage: img)
            return thumbnail
        } catch {
            print(error.localizedDescription)
            return nil
        }
    }
}
