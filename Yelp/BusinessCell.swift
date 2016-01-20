//
//  BusinessCell.swift
//  Yelp
//
//  Created by Takashi Wickes on 1/19/16.
//  Copyright © 2016 Timothy Lee. All rights reserved.
//

import UIKit

class BusinessCell: UITableViewCell {

    @IBOutlet weak var thumbImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ratingImageView: UIImageView!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var typeLabel: UILabel!
    @IBOutlet weak var reviewLabel: UILabel!
    @IBOutlet weak var milesLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    
    var business: Business! {
        didSet {
            nameLabel.text = business.name
            thumbImageView.setImageWithURL(business.imageURL!)
            typeLabel.text = business.categories
            addressLabel.text = business.address
            reviewLabel.text = "\(business.reviewCount!) Reviews"
            ratingImageView.setImageWithURL(business.ratingImageURL!)
            milesLabel.text = business.distance
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        thumbImageView.layer.cornerRadius = 9
        thumbImageView.clipsToBounds = true
        
        
//        nameLabel.preferredMaxLayoutWidth = nameLabel.frame.size.width
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
