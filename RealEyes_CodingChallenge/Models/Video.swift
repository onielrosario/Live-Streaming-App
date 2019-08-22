//
//  SteamingLinks.swift
//  RealEyes_CodingChallenge
//
//  Created by Oniel Rosario on 8/21/19.
//  Copyright © 2019 Oniel Rosario. All rights reserved.
//

import Foundation


class VideoClip {
    let link: URL
    let thumbNail: URL
    let name: String
    init(link: URL, thumbnail: URL, name: String) {
        self.link = link
        self.thumbNail = thumbnail
        self.name = name
    }
}
