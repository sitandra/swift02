//
//  Pizza.swift
//  swift02
//
//  Created by Юлия Дебелова on 25.07.2023.
//

import Foundation

struct Pizza {
    enum TypePizza: String {
        case classic = "Классическая"
        case margherita = "Маргарита"
        case pepperoni = "Пепперони"
        case veggie = "Овощная"
    }
    enum Topping: String {
        case ketchup = "Кетчуп"
        case oil = "Масло"
        case mayonnaise = "Майонез"
        case butterSauce = "Сливочный соус"
        case tomate = "Помидоры"
        case chees = "Сыр"
    }
    enum Base: String {
        case thin = "Тонкое тесто"
        case bold = "Толстое тесто"
    }
    let type: TypePizza;
    let base: Base;
    let cost: Double;
    let toppings: [Topping]
    
    func print(){
        var toppingsOut = ""
        for topping in toppings{
            toppingsOut += " + " + topping.rawValue
        }
        Swift.print("\(type.rawValue) \(base.rawValue) \(cost)\(toppingsOut)")
    }
}
