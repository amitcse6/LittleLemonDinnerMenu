//
//  MenuItemModel.swift
//  LittleLemonDinnerMenu
//
//  Created by 11461_amit on 1/9/23.
//

import Foundation

struct MenuItemModel: Codable, Identifiable, Hashable {
    var id = UUID().newUUID
    let foodType: String
    var foodName: String
    let imageName: String
}
