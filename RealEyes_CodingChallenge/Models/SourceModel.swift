//
//  SourceModel.swift
//  RealEyes_CodingChallenge
//
//  Created by Oniel Rosario on 8/21/19.
//  Copyright © 2019 Oniel Rosario. All rights reserved.
//

import Foundation


class Source: SourceModeling {
    var sources: [String]
    let mockData = ["https://bitdash-a.akamaihd.net/content/sintel/hls/playlist.m3u8"]
    
    init(sources: [String]) {
        self.sources = mockData
    }
}


