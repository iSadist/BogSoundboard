import UIKit
import AVFoundation

class SoundBoardViewController: UIViewController {
    
    var currentAudioPlayer: AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        playSound(title: sender.titleLabel!.text!)
    }
    
    func playSound(title: String) {
        let filePath = title.lowercased()
            .replacingOccurrences(of: "?", with: "")
            .replacingOccurrences(of: " ", with: "")
        
        print(filePath)
        
        let audioPlayer = AudioUtility.createAudioPlayer(filePath: filePath)
        
        currentAudioPlayer = audioPlayer
        
        print(currentAudioPlayer)
        
        currentAudioPlayer?.play()
    }
    
}

