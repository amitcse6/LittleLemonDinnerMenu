//
//  MenuModel.swift
//  LittleLemonDinnerMenu
//
//  Created by 11461_amit on 1/9/23.
//

import Foundation
 
struct MenuModel: Codable, Identifiable, Hashable {
    var id: String = UUID().newUUID
    var menuName: String
    var menuItems: [MenuItemModel]
}
