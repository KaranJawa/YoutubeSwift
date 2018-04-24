//
//  DataCell.swift
//  CapstoneProject
//
//  Created by Xcode User on 2018-04-23.
//  Copyright © 2018 Xcode User. All rights reserved.
//

import UIKit

class DataCell: UITableViewCell {

    @IBOutlet weak var videoView: VideoView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
