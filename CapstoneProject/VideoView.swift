//
//  VideoView.swift
//  CapstoneProject
//
//  Created by Xcode User on 2018-04-23.
//  Copyright © 2018 Xcode User. All rights reserved.
//

import UIKit
import AVFoundation
class VideoView: UIView {
    override static var layerClass: AnyClass{
       return AVPlayerLayer.self
    }
    var playerLayer: AVPlayerLayer{
    return layer as! AVPlayerLayer
    }
    var player: AVPlayer?{
        get{
            return playerLayer.player
        }
        set{
            playerLayer.player = newValue
        }
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
