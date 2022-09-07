//
//  Town.swift
//  MonsterTown
//
//  Created by 김재형 on 2022/09/06.
//

import Foundation


struct Town {
	let region = "Middle"
	var population = 5_422
	var numberOfStopLights = 4
	
	enum Size {
		case small, medium, large
	}
	
	func printDescription() {
		print("Population: \(population); number of Stoplights: \(numberOfStopLights)")
	}
	
	mutating func changePopulation(by amount: Int) {
		if population + amount < 0 {
			population = 0
		} else {
			population += amount
		}
	}
}

