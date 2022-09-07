//
//  Town.swift
//  MonsterTown
//
//  Created by 김재형 on 2022/09/06.
//

import Foundation


struct Town {
	var population = 5_424
	var numberOfStopLights = 4
	
	func printDescription() {
		print("Population: \(population); number of Stoplights: \(numberOfStopLights)")
	}
	
	mutating func changePopulation(by amount: Int) {
		population += amount
	}
}

