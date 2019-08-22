//
//  SourceModel.swift
//  RealEyes_CodingChallenge
//
//  Created by Oniel Rosario on 8/21/19.
//  Copyright © 2019 Oniel Rosario. All rights reserved.
//

import Foundation

protocol SourceModeling {
    var sources: [StreamingLinks] { get }
}

class Source: SourceModeling {
    let sources: [StreamingLinks] = [
        StreamingLinks(data: [URL(string:"https://bitdash-a.akamaihd.net/content/MI201109210084_1/m3u8s/f08e80da-bf1d-4e3d-8899-f0f6155f6efa.m3u8")! : "first video"
            ])
    ]
}


