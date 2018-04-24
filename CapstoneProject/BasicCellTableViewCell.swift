//
//  BasicCellTableViewCell.swift
//  CapstoneProject
//
//  Created by Xcode User on 2018-04-04.
//  Copyright © 2018 Xcode User. All rights reserved.
//

import UIKit

class BasicCellTableViewCell: UITableViewCell {
    @IBOutlet weak var webView: UIWebView!
    @IBOutlet weak var label: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
