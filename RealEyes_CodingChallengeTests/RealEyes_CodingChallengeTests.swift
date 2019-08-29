//
//  RealEyes_CodingChallengeTests.swift
//  RealEyes_CodingChallengeTests
//
//  Created by Oniel Rosario on 8/20/19.
//  Copyright © 2019 Oniel Rosario. All rights reserved.
//

import XCTest
import AVKit
@testable import RealEyes_CodingChallenge

class RealEyes_CodingChallengeTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }


    func testGetLinkInfo() {
        let exp = expectation(description: "video source works!")
        guard let url = URL(string: "https://bitdash-a.akamaihd.net/content/MI201109210084_1/m3u8s/f08e80da-bf1d-4e3d-8899-f0f6155f6efa.m3u8") else { return  }
       let viewModel: DetailVCViewModeling = DetailVCViewModel()
            viewModel.play(url)
            exp.fulfill()
           wait(for: [exp], timeout: 3.0)
        }

}
