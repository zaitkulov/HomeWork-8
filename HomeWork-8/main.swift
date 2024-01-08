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

// 2.Задание: Разработка и тестирование иерархии классов животных

class Animal {
    let name: String
    
     init(name: String) {
        self.name = name
    }
    var type: String {
        return "Животное"
    }
    func sleep() -> String {
        return "\(type) \(name) спит"
    }
}
class Cat: Animal {
    let sound: String
    
    init(name: String, sound: String = "Мяу") {
        self.sound = sound
        super.init(name: name)
        
    }
    override var type: String {
        return "Кот"
    }
    override func sleep() -> String {
        return "\(super.sleep()) и мурлычет"
    }
    func play() {
        print ("\(type) \(name) играет")
    }
}
class Dog: Animal {
    let sound: String
    
    init(name:String, sound: String = "Гав") {
        self.sound = sound
        super.init(name: name)
    }
    override var type: String {
        return "Собака"
    }
    override func sleep() -> String {
        return "\(super.sleep()) и храпит"
    }
    func play() {
        print ("\(type) \(name) играет")
    }
}
let cat1 = Cat(name: "Маркиз", sound: "Мяу")
let dog1 = Dog(name: "Джек", sound: "Гав")
print(cat1.type)
print(dog1.type)

print(cat1.sleep())
print(dog1.sleep())

cat1.play()
dog1.play()

let cat2 = Cat(name: "Вася")
print(cat2.type)
print(cat2.sound)

print("Звук кота: \(cat1.sound)")
print ("Звук собаки: \(dog1.sound)")


