//
//  TableViewCellViewModel.swift
//  PremierLeague
//
//  Created by epita on 07/08/2020.
//  Copyright © 2020 Juan Riveros. All rights reserved.
//

import Foundation

class TableViewCellViewModel {
    
    func getName(team: Team) -> String {
        return team.name
    }
    
    func getNickname(team: Team) -> String {
        return team.knownAs
    }
    
    func getBadgeImage(team: Team) -> String? {
        return team.imageBadge
    }
    
    func getLeagueTitles(team: Team) -> String {
        return "League Titles: \(team.leagueTitles)"
    }
    
}
