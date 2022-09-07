//
//  main.swift
//  MonsterTown
//
//  Created by 김재형 on 2022/09/06.
//

import Foundation


var myTown: Town = Town()
//print(myTown.townSize)						// small
//myTown.changePopulation(by: 1000_000)
//print(myTown.townSize)						// lazy: small ==> myTown.townSize property is only calculated when it is first accessed and is never recalculated.

let fredTheZombie = Zombie()
fredTheZombie.town = myTown
fredTheZombie.terrorizeTown()
fredTheZombie.town?.printDescription()

print("Victim pool: \(fredTheZombie.victimPool)")
fredTheZombie.victimPool = 500
print("Victim pool: \(fredTheZombie.victimPool); population: \(fredTheZombie.town?.population ?? 0)")

print(Zombie.spookyNoise)

if Zombie.isTerrifying {
	print("Run away")
}
