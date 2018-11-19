//
//  BekasiVideoViewController.swift
//  Wisata
//
//  Created by MacBook  on 10/31/18.
//  Copyright © 2018 MacBook . All rights reserved.
//

import UIKit
import AVKit

class BekasiVideoViewController: UIViewController {

    @IBAction func BekasiVideo(_ sender: UIButton) {
        if let path = Bundle.main.path(forResource: "BEKASI", ofType: "mp4")
        {
            let video = AVPlayer(url: URL(fileURLWithPath: path))
            
            let videoPlayer = AVPlayerViewController()
            videoPlayer.player = video
            present(videoPlayer, animated: true) {
                video.play()
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
