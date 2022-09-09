//
//  Monster.swift
//  MonsterTown
//
//  Created by 김재형 on 2022/09/06.
//

import Foundation

class Monster {
	var town: Town?					// terrorize할 town이 아직 없을 수도 있으므로 Optional
	var name: String
	static let isTerrifying = true
	
	class var spookyNoise: String {
		return "Brains..."
	}
	
	var victimPool: Int {
		get {
			return town?.population ?? 0
		}
		set {
			town?.population = newValue
		}
	}
	
	required init(town: Town?, monsterName: String) {
		self.town = town
		name = monsterName
	}
	
	
	func terrorizeTown() {
		if town != nil {
			print("\(name) is terrorizing a town!")
		} else {
			print("\(name) hasn't found a town to terrorize yet...")
		}
	}
}
