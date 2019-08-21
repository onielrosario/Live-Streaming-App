//
//  ViewModel.swift
//  RealEyes_CodingChallenge
//
//  Created by Oniel Rosario on 8/21/19.
//  Copyright © 2019 Oniel Rosario. All rights reserved.
//

import Foundation

protocol SourceViewModeling {
    var sources: [String] { get }
}



class SourceViewModel: SourceViewModeling {
    var sources: [String]
    
    init(source: Source = Source() ) {
        self.sources = source.sources
    }
}
