//
//  DetailViewController.swift
//  PremierLeague
//
//  Created by epita on 08/08/2020.
//  Copyright © 2020 Juan Riveros. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var teamImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var yearLabel: UILabel!
    @IBOutlet weak var stadiumLabel: UILabel!
    @IBOutlet weak var leagueTitlesLabel: UILabel!
    @IBOutlet weak var coachNameLabel: UILabel!
    @IBOutlet weak var coachAgeLabel: UILabel!
    @IBOutlet weak var coachTitlesLabel: UILabel!
    @IBOutlet weak var coachImage: UIImageView!
    
    var viewModel = DetailViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        configure()

    }
    
    func configure(){
        
        title = viewModel.team?.name
        teamImage.image = UIImage(named: viewModel.getTeamImage() ?? "")
        nameLabel.text = viewModel.getName()
        cityLabel.text = viewModel.getCity()
        yearLabel.text = viewModel.getYear()
        leagueTitlesLabel.text = viewModel.getLeagueTitles()
        stadiumLabel.text = viewModel.getStadium()
        coachNameLabel.text = viewModel.getCoachName()
        coachAgeLabel.text = viewModel.getCoachAge()
        coachTitlesLabel.text = viewModel.getCoachTitles()
        coachImage.image = UIImage(named: viewModel.getCoachImage() ?? "")
 
    }

}
