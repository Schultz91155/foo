//
//  Menu.swift
//  foo
//
//  Created by Pavel Brovkin on 25.11.2023.
//

import Foundation
import UIKit

struct Group{
    var groups: [Group]?
    var name:String
    var products : [Product]?
    var image: UIImage
}

struct Product {
    var name: String
    var price: Float
    var image :UIImage
}

class Menu {
    var groups = [Group]()
    
    init(){
        setup()
    }
    func setup(){
        let p1 = Product(name: "Пицца с говядиной", price: 100, image: UIImage(named: "p1")!)
        let p2 = Product(name: "Пицца со свининой", price: 200, image: UIImage(named: "p1")!)
        let p3 = Product(name: "Пицца с колбасой", price: 300, image: UIImage(named: "p1")!)
        let p4 = Product(name: "Пицца с курицой", price: 100, image: UIImage(named: "p1")!)
        let p5 = Product(name: "Пицца с индейкой", price: 200, image: UIImage(named: "p1")!)
        let p6 = Product(name: "Пицца с сыром", price: 100, image: UIImage(named: "p1")!)
        let p7 = Product(name: "Пицца с овощами", price: 200, image: UIImage(named: "p1")!)
        let p8 = Product(name: "Пицца с говном", price: 0, image: UIImage(named: "p1")!)
        let meatPizzas = [p1,p2,p3]
        let chikenPizzas = [p4,p5]
        let vegetablePizzas = [p6,p7,p8]
        
        let pizzaMeatGroup = Group(groups: nil, name: "Пиццы с мясом", products: meatPizzas, image: UIImage(named: "p1")!)
        let pizzaChikenGroupe = Group(groups: nil, name: "Пиццы с птицей", products: chikenPizzas, image: UIImage(named: "p1")!)
        let pizzaVegetablesGrope = Group(groups: nil, name: "Пиццы с овощами", products: vegetablePizzas, image: UIImage(named: "p1")!)
        
        let pizzaGroup = Group(groups: [pizzaMeatGroup, pizzaChikenGroupe, pizzaVegetablesGrope], name: "Пицца", products: nil, image: UIImage(named: "p1")!)
        
        
        let b1 = Product(name: "Бургеры с говядиной", price: 100, image: UIImage(named: "p2")!)
        let b2 = Product(name: "Бургеры со свининой", price: 200, image: UIImage(named: "p2")!)
        let b3 = Product(name: "Бургеры с колбасой", price: 300, image: UIImage(named: "p2")!)
        let b4 = Product(name: "Бургеры с курицой", price: 100, image: UIImage(named: "p2")!)
        let b5 = Product(name: "Бургеры с индейкой", price: 200, image: UIImage(named: "p2")!)
        let b6 = Product(name: "Бургеры с сыром", price: 100, image: UIImage(named: "p2")!)
        let b7 = Product(name: "Бургеры с овощами", price: 200, image: UIImage(named: "p2")!)
        let b8 = Product(name: "Бургеры с говном", price: 0, image: UIImage(named: "p2")!)
        let meatBurgers = [b1,b2,b3]
        let chikenBurgers = [b4,b5]
        let vegetableBurgers = [b6,b7,b8]
        
        let burgerMeatGroup = Group(groups: nil, name: "Бургеры с мясом", products: meatBurgers, image: UIImage(named: "p2")!)
        let burgerChikenGroupe = Group(groups: nil, name: "Бургеры с птицей", products: chikenBurgers, image: UIImage(named: "p2")!)
        let burgerVegetablesGrope = Group(groups: nil, name: "Бургеры с овощами", products: vegetableBurgers, image: UIImage(named: "p2")!)
        
        let burgerGroup = Group(groups: [burgerMeatGroup, burgerChikenGroupe, burgerVegetablesGrope], name: "Бургеры", products: nil, image: UIImage(named: "p2")!)
        
        groups.append(pizzaGroup)
        groups.append(burgerGroup)
    }
}
extension String{
    func widthOfString(usingFont font: UIFont) -> CGFloat {
             let fontAttributes = [NSAttributedString.Key.font: font]
             let size = (self as NSString).size(withAttributes: fontAttributes)
             return ceil(size.width)
    }
}
