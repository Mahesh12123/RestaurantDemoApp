//
//  FoodCell.swift
//  RestaurantCartDemoApp
//
//  Created by Mahesh Mahara on 2/25/22.
//

import UIKit

class FoodCell: UITableViewCell {

    @IBOutlet weak var backGroundView: UIView!
    @IBOutlet weak var itemsNameLbl: UILabel!
    @IBOutlet weak var itemsTaxLbl: UILabel!
    @IBOutlet weak var itemsquantitylbl: UILabel!
    @IBOutlet weak var itemspriceLbl: UILabel!
    @IBOutlet weak var itemsFoodImg: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        backGroundView.ViewCorners()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
