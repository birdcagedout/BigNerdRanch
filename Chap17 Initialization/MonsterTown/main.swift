//
//  main.swift
//  MonsterTown
//
//  Created by 김재형 on 2022/09/06.
//

import Foundation


var myTown: Town? = Town(population: 0, stoplights: 6)
myTown?.printDescription()

let fredTheZombie = Zombie(limp: false, fallingApart: false, town: myTown, monsterName: "Fred")
fredTheZombie.terrorizeTown()
fredTheZombie.town?.printDescription()

var convZombie: Zombie? = Zombie(limp: true, fallingApart: false)
convZombie?.town = myTown
print("Victim pool: \(String(describing: convZombie?.victimPool))")
convZombie = nil

