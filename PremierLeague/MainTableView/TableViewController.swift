//
//  TableViewController.swift
//  PremierLeague
//
//  Created by epita on 07/08/2020.
//  Copyright © 2020 Juan Riveros. All rights reserved.
//

import UIKit

class TableViewController: UIViewController {

    @IBOutlet weak var teamsTableView: UITableView!
    
    
    var viewmodel: TableViewModel?
    var teamSelected: Team?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        teamsTableView.dataSource = self
        teamsTableView.delegate = self
        viewmodel = TableViewModel()
        title = "Premier League Teams"
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailViewControler = segue.destination as? DetailViewController else {
            return
        }
        detailViewControler.viewModel.team = teamSelected
    }
}



extension TableViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let viewmodel = viewmodel else {
            return 0
        }
        return viewmodel.getNumberOfRows()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "teamCell") as? TableViewCell else {
            return UITableViewCell()
        }
        
        let team = viewmodel?.teamAt(indexPath: indexPath)
        cell.configure(team: team)
        return cell
    }
    
    
}

extension TableViewController: UITableViewDelegate{
 
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        teamSelected = viewmodel?.teamAt(indexPath: indexPath)
        performSegue(withIdentifier: "detailSegue", sender: nil)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
}
