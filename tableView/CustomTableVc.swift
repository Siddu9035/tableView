//
//  CustomTableVc.swift
//  tableView
//
//  Created by siddappa tambakad on 08/12/23.
//

import UIKit

class CustomTableVc: UITableViewCell {
    
    @IBOutlet var backImageView: UIImageView!
    @IBOutlet var onlineLabel: UILabel!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var protectionLabel: UILabel!
    @IBOutlet var powerImageView: UIImageView!
    @IBOutlet var cardView: UIView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        configureCardView()
    }

    func configureCardView() {
        cardView.layer.cornerRadius = 5
        cardView.layer.borderWidth = 0.7
        cardView.layer.borderColor = UIColor.black.cgColor
        cardView.clipsToBounds = true
    }

}
