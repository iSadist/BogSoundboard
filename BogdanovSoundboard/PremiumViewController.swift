//
//  PremiumViewController.swift
//  BogdanovSoundboard
//

import UIKit
import AVFoundation

class PremiumViewController: UIViewController {
    
    @IBOutlet weak var bogImageView: UIImageView!
    var audioPlayer: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bogImageView.isHidden = true
    }
    
    @IBAction func purchaseTapped(_ sender: UIBarButtonItem) {
        audioPlayer = AudioUtility.createAudioPlayer(filePath: "buzz")
        audioPlayer?.play()
        vibratePhone()
        self.bogImageView.isHidden = false
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0, execute: {
            self.audioPlayer = AudioUtility.createAudioPlayer(filePath: "hebought")
            self.audioPlayer?.play()
        })
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0, execute: {
            self.audioPlayer = AudioUtility.createAudioPlayer(filePath: "crashit")
            self.audioPlayer?.play()
        })
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0, execute: {
            self.crashApp()
        })
    }
    
    func crashApp() {
        var crashVariable: Int? = nil
        let crash = crashVariable!
    }
    
    func vibratePhone() {
        AudioServicesPlayAlertSound(SystemSoundID(kSystemSoundID_Vibrate))
    }
}
