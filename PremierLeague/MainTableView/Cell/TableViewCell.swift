//
//  TableViewCell.swift
//  PremierLeague
//
//  Created by epita on 07/08/2020.
//  Copyright © 2020 Juan Riveros. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var teamLabel: UILabel!
    @IBOutlet weak var knownAsLabel: UILabel!
    @IBOutlet weak var badgeImage: UIImageView!
    @IBOutlet weak var titlesLabel: UILabel!
    
    var viewModel: TableViewCellViewModel?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        viewModel = TableViewCellViewModel()
        
        /*badgeImage.layer.borderWidth = 1
        badgeImage.layer.masksToBounds = false
        badgeImage.layer.borderColor = UIColor.black.cgColor
        badgeImage.layer.cornerRadius = badgeImage.frame.height/2
        badgeImage.clipsToBounds = true*/
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure(team: Team?){
        guard let team = team else {
            return
        }
        teamLabel.text = viewModel?.getName(team: team)
        knownAsLabel.text = viewModel?.getNickname(team: team)
        badgeImage.image = UIImage(named: viewModel?.getBadgeImage(team: team) ?? "")
        titlesLabel.text = viewModel?.getLeagueTitles(team: team)
        
    }

}
