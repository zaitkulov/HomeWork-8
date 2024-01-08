//
//  main.swift
//  HomeWork-8
//
//  Created by Артем Заиткулов on 08.01.2024.
//

import Foundation

// 1.Задание: Разработка и тестирование боевой системы в ролевой игре

class Fighter {
    func attack() {
        print ("Обычная атака бойца")
    }
    func useUltimateAbility() {
        print ("У бойца нет уникальной способности")
    }
}
class Warrior: Fighter {
    override func useUltimateAbility() {
        print ("Warrior использует Супер Удар!")
    }
}
class Mag: Fighter {
    override func useUltimateAbility() {
        print ("Маг использует Ультимативное заклинание!")
    }
}
func startFighter1() {
    let warrior = Warrior()
    warrior.attack()
    warrior.useUltimateAbility()
    warrior.attack()
}
func startFighter2() {
    let mag = Mag()
    mag.attack()
    mag.useUltimateAbility()
    mag.attack()
}
startFighter1()
print("\n")
startFighter2()


