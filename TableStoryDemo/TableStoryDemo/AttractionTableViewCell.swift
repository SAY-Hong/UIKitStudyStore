//
//  AttractionTableViewCell.swift
//  TableStoryDemo
//
//  Created by 홍세희 on 2023/11/16.
//

import UIKit

class AttractionTableViewCell: UITableViewCell {

    @IBOutlet var attractionImage: UIImageView!
    @IBOutlet var attractionLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
