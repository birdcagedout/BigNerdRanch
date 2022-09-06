//
//  main.swift
//  MonsterTown
//
//  Created by 김재형 on 2022/09/06.
//

import Foundation


var myTown: Town = Town()
myTown.changePopulation(by: 500)
myTown.printDescription()

let genericMonster = Monster()
genericMonster.town = myTown
genericMonster.terrorizeTown()




