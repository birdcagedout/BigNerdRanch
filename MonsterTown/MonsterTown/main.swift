//
//  main.swift
//  MonsterTown
//
//  Created by 김재형 on 2022/09/06.
//

import Foundation


var myTown: Town = Town()
let fredTheZombie = Zombie()
fredTheZombie.town = myTown
fredTheZombie.terrorizeTown()
fredTheZombie.town?.printDescription()

