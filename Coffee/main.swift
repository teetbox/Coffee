//
//  main.swift
//  Coffee
//
//  Created by Tong Tian on 2018/7/18.
//  Copyright © 2018 TeetBox. All rights reserved.
//

import Foundation

protocol Coffee {
    func cost() -> Double
    func condiment() -> String
}

extension Coffee {
    var description: String {
        return "\(condiment()): $\(cost())"
    }
}

struct NormalCoffee: Coffee {
    
    func cost() -> Double {
        return 1.0
    }
    
    func condiment() -> String {
        return "Coffee"
    }
    
}

protocol CupDecorator: Coffee {
    
}

protocol CondimentDecorator: Coffee {
    
}

struct MilkCondiment: CondimentDecorator {
    
    let coffee: Coffee
    
    func cost() -> Double {
        return coffee.cost() + 0.1
    }
    
    func condiment() -> String {
        return coffee.condiment() + ", milk"
    }

}

struct SugarCondiment: CondimentDecorator {
    
    let coffee: Coffee
    
    func cost() -> Double {
        return coffee.cost() + 0.05
    }
    
    func condiment() -> String {
        return coffee.condiment() + ", sugar"
    }
    
}

print("Hello, World!")

var coffee: Coffee = NormalCoffee()
print(coffee.description)

coffee = MilkCondiment(coffee: coffee)
print(coffee.description)

coffee = SugarCondiment(coffee: coffee)
print(coffee.description)







