import AVKit


extension UIViewController {
    public func presentPlayer(videoUrl: URL) {
       let playerViewController = PlayerViewController()
        let player = AVPlayer(url: videoUrl)
        playerViewController.player = player
        present(playerViewController, animated: true)
    }
    public func presentAlertWithAction(title: String?, message: String?) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let ok = UIAlertAction(title: "OK", style: .default) { OK in }
        alert.addAction(ok)
        present(alert, animated: true, completion: nil)
    }
}
