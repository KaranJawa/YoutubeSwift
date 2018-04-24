//
//  ViewController.swift
//  CapstoneProject
//
//  Created by Xcode User on 2018-03-27.
//  Copyright © 2018 Xcode User. All rights reserved.
//

import UIKit


class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource{
let location = ["Cardio Exercises","Grip Strength Exercises","Pushups Exercises","Height Increasing Exercises"]
    let Image = [UIImage(named: "cardio.jpg"),UIImage(named: "grip.jpg"),UIImage(named: "pushups.jpg"),UIImage(named: "height.jpg")]
    let locationDescription = ["Cardio exercise is any exercise that raises your heart rate", "Building up your grip strength is imperative on powerful moves like pull-ups and deadlifts", "Pushups are a classic test of muscular endurance and  good way to get better at this exercise","Height plays an important role in enhancing the persona of an individual"]

    override func viewDidLoad() {
        super.viewDidLoad()
        let db:DBAccess = DBAccess()
        db.connect()
        let user: User = User.init()
        user.initWithStuff(name: "Sujju Darling", password: "password", email: "sujju@dangr.com", phone: "", gender: "Doesn't want to disclose", age: 50, approle: "user")
        db.insertUser(user: user)
            }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return location.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        
        cell.locationImage.image = Image[indexPath.row]
        cell.locationName.text = location[indexPath.row]
        cell.locationDescription.text = locationDescription[indexPath.row]
        
        //This creates the shadows and modifies the cards a little bit
        cell.contentView.layer.cornerRadius = 4.0
        cell.contentView.layer.borderWidth = 1.0
        cell.contentView.layer.borderColor = UIColor.clear.cgColor
        cell.contentView.layer.masksToBounds = false
        cell.layer.shadowColor = UIColor.gray.cgColor
        cell.layer.shadowOffset = CGSize(width: 0, height: 1.0)
        cell.layer.shadowRadius = 4.0
        cell.layer.shadowOpacity = 1.0
        cell.layer.masksToBounds = false
        cell.layer.shadowPath = UIBezierPath(roundedRect: cell.bounds, cornerRadius: cell.contentView.layer.cornerRadius).cgPath
        
        
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let videoLauncher = VideoLauncher()
        videoLauncher.showVideoPlayer()
        
        
    }
   
}

