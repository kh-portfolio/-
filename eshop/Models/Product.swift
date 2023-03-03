//
//  product.swift
//  eshop
//
//  Created by ひがしかいと on 2023/03/02.
//

import Foundation

struct Product: Identifiable{
    var id = UUID()
    var name: String
    var image: String
    var price: Int
}

var productList = [Product(name: "りんご", image: "apple", price: 500),
                   Product(name: "さくらんぼ", image: "cherry", price: 500),
                   Product(name: "ヤシのみ", image: "coconut", price: 500),
                   Product(name: "オレンジ", image: "orange", price: 500),
                   Product(name: "もも", image: "peach", price: 500),
                   Product(name: "なし", image: "pear", price: 500),
                   Product(name: "さくらんぼ", image: "cherry", price: 500),
                   Product(name: "ヤシのみ", image: "coconut", price: 500)]
