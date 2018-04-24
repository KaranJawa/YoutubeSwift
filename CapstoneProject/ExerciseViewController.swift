//
//  ExerciseViewController.swift
//  CapstoneProject
//
//  Created by Xcode User on 2018-04-03.
//  Copyright © 2018 Xcode User. All rights reserved.
//

import UIKit
import AVFoundation
class ExerciseViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    var fileURL:NSURL?
    let width = 375
    let height = 128
    let frame = 30
    @IBOutlet weak var tableView: UITableView!
   // var videos:[Video] = [Video]()
    override func viewDidLoad() {
        super.viewDidLoad()
        //self.videos = VideoModel().getVideos()
        self.tableView.dataSource = self
        self.tableView.delegate = self
           let path = Bundle.main.path(forResource: "videoplayback", ofType: ".mp4")
       
        fileURL = NSURL(fileURLWithPath: path!)
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellView" ) as! DataCell
     
        let avPlayer = AVPlayer(url: fileURL! as URL)
       // avPlayer.videoGravity=AVLayerVideoGravityResizeAspectFill;
        cell.videoView.playerLayer.player = avPlayer
        cell.videoView.player?.play()
        
//    var
//        let videoThumbnailURLString = "http://i3.ytimg.com/vi"+videos[indexPath.row].videoId+"/tccdbY5xcf4/maxresdefault.jpg"
//        let videoThumbnailURL = NSURL(string: videoThumbnailURLString)
//        let request = NSURLRequest(URL : videoThumbnailURL!)
        
        return cell
       
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
