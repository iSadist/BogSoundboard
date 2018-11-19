//
//  PremiumViewController.swift
//  BogdanovSoundboard
//

import UIKit
import AVFoundation

class PremiumViewController: UIViewController {
    
    @IBOutlet weak var bogImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bogImageView.isHidden = true
    }
    
    @IBAction func purchaseTapped(_ sender: UIBarButtonItem) {
        bogImageView.isHidden = false
        vibratePhone()
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0, execute: {
            self.vibratePhone()
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
