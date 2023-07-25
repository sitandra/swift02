//
//  Pizzeria.swift
//  swift02
//
//  Created by Юлия Дебелова on 25.07.2023.
//

import Foundation

class Pizzeria {
    private var pizzas: [Pizza] = []
    
    init(pizzas: [Pizza]) {
        self.pizzas = pizzas
    }
    
    convenience init() {
        self.init(pizzas: [
            Pizza(type: Pizza.TypePizza.classic, base: Pizza.Base.thin, cost: 200, toppings: []),
            Pizza(type: Pizza.TypePizza.margherita, base: Pizza.Base.thin, cost: 250, toppings: []),
            Pizza(type: Pizza.TypePizza.veggie, base: Pizza.Base.thin, cost: 150, toppings: []),
        ])
    }
    
    func addPizza(pizza: Pizza) {
        self.pizzas.append(pizza)
    }
    
    func getMenu() -> [Pizza] {
        return self.pizzas;
    }
}
