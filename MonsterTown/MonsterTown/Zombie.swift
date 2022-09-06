//
//  Zombie.swift
//  MonsterTown
//
//  Created by 김재형 on 2022/09/06.
//

import Foundation


class Zombie: Monster {
	var walksWithLimp = true
	
	override func terrorizeTown() {
		town?.changePopulation(by: -10)
		super.terrorizeTown()
	}
}

