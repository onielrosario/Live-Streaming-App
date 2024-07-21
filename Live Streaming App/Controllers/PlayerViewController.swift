import AVKit

class PlayerViewController: AVPlayerViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
     setupUI()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
         AppUtility.lockOrientationWithRotation(.landscape, andRotateTo: .landscapeRight)
    }
    private func setupUI() {
        if let player = player {
            player.play()
        } else {
            presentAlertWithAction(title: "Source url has expired", message: "OK")
        }
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        AppUtility.lockOrientation(orientation: .all)
    }
}
