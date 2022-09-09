//
//  Town.swift
//  MonsterTown
//
//  Created by 김재형 on 2022/09/06.
//

import Foundation


struct Town {
	static let world = "Earth"
	let region: String
	var population: Int
	var numberOfStopLights: Int
	
	// initializer
	init?(region: String, population: Int, stoplights: Int) {
		guard population > 0 else {
			print("Town initialization has failed!")
			return nil
		}
		
		self.region = region
		self.population = population
		numberOfStopLights = stoplights
	}
	
	// initializer
	init?(population: Int, stoplights: Int) {
		self.init(region: "N/A", population: population, stoplights: stoplights)
	}

	enum Size {
		case small
		case medium
		case large
	}
		
	var townSize: Size {
		switch population {
		case 0...10_000:
			return Size.small

		case 10_000...100_000:
			return Size.medium

		default:
			return Size.large
		}
	}

	
	func printDescription() {
		print("Population: \(population); Stoplights: \(numberOfStopLights); Region: \(region)")
	}
	
	mutating func changePopulation(by amount: Int) {
		if population + amount < 0 {
			population = 0
		} else {
			population += amount
		}
	}
}

