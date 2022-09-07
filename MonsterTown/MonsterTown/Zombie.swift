//
//  Zombie.swift
//  MonsterTown
//
//  Created by 김재형 on 2022/09/06.
//

import Foundation


class Zombie: Monster {
	var walksWithLimp = true
	
	override class var spookyNoise: String {
		return "Brains..."
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

