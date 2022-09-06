//
//  Monster.swift
//  MonsterTown
//
//  Created by 김재형 on 2022/09/06.
//

import Foundation

class Monster {
	var town: Town?					// terrorize할 town이 아직 없을 수도 있으므로 Optional
	var name = "Monster"
	
	func terrorizeTown() {
		if town != nil {
			print("\(name) is terrorizing a town!")
		} else {
			print("\(name) hasn't found a town to terrorize yet...")
		}
	}
}
