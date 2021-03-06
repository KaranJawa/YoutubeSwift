//
//  VideoLauncher.swift
//  CapstoneProject
//
//  Created by Xcode User on 2018-04-24.
//  Copyright © 2018 Xcode User. All rights reserved.
//

import UIKit
import AVFoundation
class VideoPlayerView : UIView{
    let controlsContainerView : UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.red
        return view
    }()
    override init(frame: CGRect){
        super.init(frame: frame)

        backgroundColor = UIColor.black
        let path = Bundle.main.path(forResource: "videoplayback", ofType: ".mp4")
        let fileURL = NSURL(fileURLWithPath: path!) as URL?
        let player = AVPlayer(url: fileURL!)
        let playerLayer = AVPlayerLayer(player: player)
        self.layer.addSublayer(playerLayer)
        playerLayer.frame = self.frame
        player.play()
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

class VideoLauncher: NSObject
{
    func showVideoPlayer()
    {
        print("Showing video player animation....")
        let keyWindow = UIApplication.shared.keyWindow
        let view = UIView(frame: (keyWindow?.frame)!)
        view.backgroundColor = UIColor.white
        view.frame = CGRect(x: (keyWindow?.frame.width)! - 10,y: (keyWindow?.frame.width)! - 10,width: 10,height : 10 )
        let height = (keyWindow?.frame.width)! * 9/16
        let videoPlayerFrame = CGRect(x: 0, y : 0, width: (keyWindow?.frame.width)!,height: height )
        let videoPlayerView = VideoPlayerView(frame: videoPlayerFrame)
        view.addSubview(videoPlayerView)
    keyWindow?.addSubview(view)
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
            view.frame = (keyWindow?.frame)!
        }, completion:{ (completedAnimation) in
            UIApplication.shared.setStatusBarHidden(true, with: .fade )
        })
    }
}
