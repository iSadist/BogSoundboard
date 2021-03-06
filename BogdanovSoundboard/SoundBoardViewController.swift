import UIKit
import AVFoundation
import GoogleMobileAds

class SoundBoardViewController: UIViewController, GADBannerViewDelegate {
    
    var currentAudioPlayer: AVAudioPlayer?

    @IBOutlet weak var bannerView: DFPBannerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Setup ad banner view
        bannerView.adUnitID = "ca-app-pub-7231554980858919/2939374325"
        bannerView.rootViewController = self
        bannerView.load(DFPRequest())
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        playSound(title: sender.titleLabel!.text!)
    }
    
    func playSound(title: String) {
        let filePath = title.lowercased()
            .replacingOccurrences(of: "?", with: "")
            .replacingOccurrences(of: " ", with: "")
        
        let audioPlayer = AudioUtility.createAudioPlayer(filePath: filePath)
        
        currentAudioPlayer = audioPlayer
        currentAudioPlayer?.play()
    }
    
    func addBannerViewToView(_ bannerView: GADBannerView) {
        bannerView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(bannerView)
        view.addConstraints(
            [NSLayoutConstraint(item: bannerView,
                                attribute: .bottom,
                                relatedBy: .equal,
                                toItem: bottomLayoutGuide,
                                attribute: .top,
                                multiplier: 1,
                                constant: 0),
             NSLayoutConstraint(item: bannerView,
                                attribute: .centerX,
                                relatedBy: .equal,
                                toItem: view,
                                attribute: .centerX,
                                multiplier: 1,
                                constant: 0)
            ])
    }
}
