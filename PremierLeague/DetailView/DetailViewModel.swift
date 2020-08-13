//
//  DetailViewModel.swift
//  PremierLeague
//
//  Created by epita on 08/08/2020.
//  Copyright © 2020 Juan Riveros. All rights reserved.
//

import Foundation

class DetailViewModel {
    
    var team: Team?
    
    func getName() -> String {
        guard let team = team else {
            return ""
        }
        
        return "\(team.name) (\(team.knownAs))"
    }
    
    func getTeamImage() -> String? {
        guard let team = team else {
            return ""
        }
        
        return team.imageTeam
    }
    
    func getLeagueTitles() -> String {
        guard let team = team else {
            return ""
        }
        return "League Titles: \(team.leagueTitles)"
    }
    
    func getCity() -> String {
        guard let team = team else {
            return ""
        }
        return "City: \(team.city)"
    }
    
    func getYear() -> String {
        guard let team = team else {
            return ""
        }
        return "Year Born: \(team.yearBorn)"
    }
    
    func getStadium() -> String {
        guard let team = team else {
            return ""
        }
        return "Stadium: \(team.stadium)"
    }
    
    func getCoachImage() -> String? {
        guard let team = team else {
            return ""
        }
        return team.coach.image
    }
    
    func getCoachName() -> String {
        guard let team = team else {
            return ""
        }
        return "Name: \(team.coach.name)"
    }
    
    func getCoachAge() -> String {
        guard let team = team else {
            return ""
        }
        return "Age: \(team.coach.age)"
    }
    
    func getCoachTitles() -> String {
        guard let team = team else {
            return ""
        }
        return "Career Titles: \(team.coach.titles)"
    }
    
}
