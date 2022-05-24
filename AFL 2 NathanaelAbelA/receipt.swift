//
//  receipt.swift
//  AFL 2 NathanaelAbelA
//
//  Created by MacBook on 05/04/22.
//

import Foundation

public class Receipt: Model, Cart {
    private var shoppingCart = [String: Int]()
    
    init(count: Int = 0, name: String = "") {
        super.init(name: name, count: count)
    }
    
    public func addItem(Item: String, Amount: Int) {
        shoppingCart[Item] = Amount
    }
    
    public func showItem() {
        if shoppingCart.isEmpty {
            print("Your Shopping Cart is empty. Please buy something!")
        } else {
            print("\nShopping Cart (\(shoppingCart.count) items):")
            for (key, value) in shoppingCart {
                print(value, key)
            }
        }
    }
}
