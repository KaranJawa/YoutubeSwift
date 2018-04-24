//
//  VideoModel.swift
//  CapstoneProject
//
//  Created by Xcode User on 2018-04-03.
//  Copyright © 2018 Xcode User. All rights reserved.
//

import UIKit

class VideoModel: NSObject {
    func getVideos()->[Video]{
        var videos = [Video]()
        let video1=Video()
        video1.videoId = "IODxDxX7oi4"
        video1.videoTitle = "The 25 Best Push up Exercises"
        video1.videoDescription = "Search the most effective & affordable workout programs on the web @ "
        
        videos.append(video1)
        let video2=Video()
        video2.videoId = "3Pmo3x0VrBA"
        video2.videoTitle = "Changing Body Composition through Diet and Exercise | The Great Courses"
        video2.videoDescription = "How’s that going to help you walk a mile? If you change your body composition, you’ll see and feel the results you’ve been looking for! "
        
        videos.append(video2)
        let video3=Video()
        video3.videoId = "YKWarUyuOHk"
        video3.videoTitle = "19 Grip Strength Exercises for Grip Strength Training"
        video3.videoDescription = "Whether you want to lift more, do more pull ups, be able to rock climb higher or play tennis with no pain, strengthening your grip is important."
        
        videos.append(video3)
   return videos
        
        
    }
}
