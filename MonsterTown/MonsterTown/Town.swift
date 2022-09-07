//
//  Town.swift
//  MonsterTown
//
//  Created by 김재형 on 2022/09/06.
//

import Foundation


struct Town {
	let region = "Middle"
	var population = 5_422 {
		didSet {
			print("The population has changed from \(oldValue) to \(population)")
		}
	}
	var numberOfStopLights = 4
	
	enum Size {
		case small
		case medium
		case large
	}
	
//	lazy var townSize: Size = {
//		switch population {
//		case 0...10_000:
//			return Size.small
//
//		case 10_000...100_000:
//			return Size.medium
//
//		default:
//			return Size.large
//		}
//	}()
	
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

