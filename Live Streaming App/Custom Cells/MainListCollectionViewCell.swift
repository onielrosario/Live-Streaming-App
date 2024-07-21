import UIKit

class MainListCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var videoImage: UIImageView!
    @IBOutlet weak var videoTitle: UILabel!
    @IBOutlet weak var videoDuration: UILabel!
    func updateWith(source: VideoClip) {
        videoImage.image = UIImage(named: source.thumbNail.path)
        videoTitle.text = source.name
        layer.cornerRadius = 10
    }
}
