//
//  model.swift
//  AFL 2 NathanaelAbelA
//
//  Created by MacBook on 05/04/22.
//

import Foundation

public class Model {
    private var name: String = ""
    private var count: Int = 0
    
    init(name: String = "", count: Int = 0) {
        self.name = name
        self.count = count
    }
    
    var nameGS: String {
        get {
            return name
        }
        set(value) {
            name = value
        }
    }
    
    var countGS: Int {
        get {
            return count
        }
        set(value) {
            count = value
        }
    }
}
