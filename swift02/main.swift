//
//  main.swift
//  swift02
//
//  Created by Юлия Дебелова on 25.07.2023.
//

import Foundation

/*
 Задание
 1. Создать перечисление с видами пиццы (хотя бы 4-5 кейсов).

 2. Создать структуру пиццы. Она должна содержать стоимость, вид пиццы, толстое или тонкое тесто и добавки (например, дополнительно добавить пепперони, помидоры, сыр). Вид пиццы должен быть вложенным типом для структуры пиццы.
 Подсказка: добавки лучше также сделать перечислением.

 3. Создать класс пиццерии, добавить массив с возможными видами пиццы. Переменная с массивом должна быть приватной. Массив задаётся в инициализаторе.

 4. Написать в классе пиццерии функции для добавления нового вида пиццы и для получения всех доступных пицц.

 5. Создать экземпляр класса пиццерии и добавить в него несколько видов пицц.
 */

let pizzeria = Pizzeria()
pizzeria.addPizza(pizza: Pizza(type: Pizza.TypePizza.classic, base: Pizza.Base.bold, cost: 230, toppings: [Pizza.Topping.butterSauce]))
pizzeria.addPizza(pizza: Pizza(type: Pizza.TypePizza.veggie, base: Pizza.Base.bold, cost: 170, toppings: [Pizza.Topping.butterSauce, Pizza.Topping.chees]))
for pizza in pizzeria.getMenu() {
    pizza.print()
}
