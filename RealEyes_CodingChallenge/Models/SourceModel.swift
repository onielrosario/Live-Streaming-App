//
//  SourceModel.swift
//  RealEyes_CodingChallenge
//
//  Created by Oniel Rosario on 8/21/19.
//  Copyright © 2019 Oniel Rosario. All rights reserved.
//

import Foundation

protocol SourceModeling {
    var sources: [VideoClip] { get }
}

class Source: SourceModeling {
    let thumbURL = Bundle.main.path(forResource: "videoStillFrame1", ofType: "png")
    let secondthumbURL = Bundle.main.path(forResource: "videoStillFrame2", ofType: "png")
    lazy var sources: [VideoClip] = [
        VideoClip(link: URL(string:"https://bitdash-a.akamaihd.net/content/MI201109210084_1/m3u8s/f08e80da-bf1d-4e3d-8899-f0f6155f6efa.m3u8")!, thumbnail: URL(fileURLWithPath: thumbURL!), name: "First video"),
        VideoClip(link: URL(string:"http://qthttp.apple.com.edgesuite.net/1010qwoeiuryfg/sl.m3u8")!, thumbnail: URL(fileURLWithPath: secondthumbURL!), name: "Second video")
    ]
}


