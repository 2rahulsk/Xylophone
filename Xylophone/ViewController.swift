//
//  ViewController.swift
//  Xylophone
//
//  Created by Rahul Krishnan on 26/4/19.
//  Copyright © 2019 Rahul Krishnan. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player : AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func keyNotePressed(_ sender: UIButton) {
    
        let url = Bundle.main.url(forResource: "note\(sender.tag)", withExtension: "wav")!
        
        do {
            player = try AVAudioPlayer(contentsOf: url)
            guard let player = player else { return }
            
            player.prepareToPlay()
            player.play()
            
        } catch let error as NSError {
            print(error.description)
        }
        
    }
    
}

