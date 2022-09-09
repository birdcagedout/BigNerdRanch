//
//  Zombie.swift
//  MonsterTown
//
//  Created by 김재형 on 2022/09/06.
//

import Foundation


class Zombie: Monster {
	var walksWithLimp: Bool
	private(set) var isFallingApart: Bool		// getter=internal, setter=private
	
	override class var spookyNoise: String {
		return "Brains..."
	}
	
	// initializer
	init(limp: Bool, fallingApart: Bool, town: Town?, monsterName: String) {
		walksWithLimp = limp
		isFallingApart = fallingApart
		super.init(town: town, monsterName: monsterName)
	}
	
	// conv initializer
	convenience init(limp: Bool, fallingApart: Bool) {
		self.init(limp: limp, fallingApart: fallingApart, town: nil, monsterName: "JohnDoe")
		if walksWithLimp {
			print("This zombie has a bad knee")
		}
	}
	
	// required init
//	required init(town: Town?, monsterName: String) {
//		walksWithLimp = false
//		isFallingApart = false
//		super.init(town: town, monsterName: monsterName)
//	}
	
	
	// required init을 conv init으로 바꾸기(Silver Challenge)
	required convenience init(town: Town?, monsterName: String) {
		self.init(limp: false, fallingApart: false, town: town, monsterName: monsterName)
	}

	
	// deinit
	deinit {
		print("zombie \(name) is no longer with us.")
	}
	
	func regenerate() {
		walksWithLimp = false
	}
	
	override func terrorizeTown() {
		town?.changePopulation(by: -10)			// 이니셜라이저 내부가 아님 (이니셜라이저였다면 super.init 전에 super의 메소드 호출 불가)
		super.terrorizeTown()
		regenerate()
	}
}

