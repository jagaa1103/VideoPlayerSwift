//
//  ViewController.swift
//  VideoPlayer
//
//  Created by Enkhjargal Gansukh on 02/02/2017.
//  Copyright © 2017 Enkhjargal Gansukh. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func playClicked(_ sender: Any) {
        playExternalVideo()
    }
    
    
    func playExternalVideo(){
//        let videoUrl = "http://techslides.com/demos/sample-videos/small.mp4"
//        let videoUrl = "https://www.mongoltv.mn/665e6f32-e59f-425d-a59b-aad1da61e3bc"
        let videoUrl = "http://devimages.apple.com/iphone/samples/bipbop/gear4/prog_index.m3u8"
        
        if let url = URL(string: videoUrl) {
            
            let playerItem = AVPlayerItem(url: url)
            let playerViewController = AVPlayerViewController()
//            playerItem.addObserver(self, forKeyPath: "status", options: NSKeyValueObservingOptions(), context: nil)
            let player = AVPlayer(playerItem: playerItem)
            playerViewController.player = player
            self.present(playerViewController, animated: true, completion: { _ in
                playerViewController.player?.play()
            })
        }
    }
}

