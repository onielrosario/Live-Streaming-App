import UIKit
import AVKit



protocol ListVCViewModeling {
    var sources: [VideoClip] { get }
    var player: AVPlayer { get }
    var cellSpacing: CGFloat { get }
    var numberOfCells: CGFloat { get }
    var numberOfSpaces: CGFloat { get }
}

class ListVCViewModel: ListVCViewModeling {
    var sources: [VideoClip]
    var player: AVPlayer
    var cellSpacing: CGFloat
    var numberOfCells: CGFloat
    var numberOfSpaces: CGFloat
    
    init(sources: SourceModeling = Source(),
         player: AVPlayer = AVPlayer(),
         cellSpacing: CGFloat = 10,
         numberOfCells: CGFloat = 1
         ) {
        self.sources = sources.sources
        self.player = player
        self.cellSpacing = cellSpacing
        self.numberOfCells = numberOfCells
        self.numberOfSpaces = numberOfCells + 1
    }
}
