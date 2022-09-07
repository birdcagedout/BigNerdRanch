//
//  main.swift
//  MonsterTown
//
//  Created by 김재형 on 2022/09/06.
//

import Foundation


var myTown: Town = Town()

// ===================== Polymorphism test start
//var myTown: Town = Town()
//let fredTheZombie: Monster = Zombie()
//fredTheZombie.town = myTown
//fredTheZombie.terrorizeTown()
//fredTheZombie.town?.printDescription()

// downcast
//(fredTheZombie as! Zombie).walksWithLimp = true		// forced downcast: not safe
//(fredTheZombie as? Zombie)?.walksWithLimp = true		// optional chaining downcast : safer

// upcast and runtime type check: is
//if fredTheZombie is Zombie {							// true
//	print("fredTheZombie is Zombie")
//}
//if fredTheZombie is Monster {
//	print("fredTheZombie is Monster")					// true
//}
// ===================== end of Polymorphism test


let fredTheZombie = Zombie()
fredTheZombie.town = myTown
fredTheZombie.terrorizeTown()
fredTheZombie.town?.printDescription()

