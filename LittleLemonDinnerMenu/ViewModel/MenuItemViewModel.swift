//
//  MenuItemViewModel.swift
//  LittleLemonDinnerMenu
//
//  Created by 11461_amit on 1/9/23.
//

import Foundation

class MenuItemViewModel {
    var menuList: [MenuModel] = []
    
    func fetchData() -> [MenuModel] {
        let menuItems: [MenuItemModel] = [
            .init(id: UUID().newUUID, foodType: MenuItemType.Food.rawValue, foodName: "", imageName: "Little Lemon logo"),
            .init(id: UUID().newUUID, foodType: MenuItemType.Drink.rawValue, foodName: "", imageName: "Little Lemon logo"),
            .init(id: UUID().newUUID, foodType: MenuItemType.Food.rawValue, foodName: "", imageName: "Little Lemon logo"),
            .init(id: UUID().newUUID, foodType: MenuItemType.Drink.rawValue, foodName: "", imageName: "Little Lemon logo"),
            .init(id: UUID().newUUID, foodType: MenuItemType.Drink.rawValue, foodName: "", imageName: "Little Lemon logo"),
            .init(id: UUID().newUUID, foodType: MenuItemType.Food.rawValue, foodName: "", imageName: "Little Lemon logo"),
            .init(id: UUID().newUUID, foodType: MenuItemType.Food.rawValue, foodName: "", imageName: "Little Lemon logo"),
            .init(id: UUID().newUUID, foodType: MenuItemType.Dessert.rawValue, foodName: "", imageName: "Little Lemon logo"),
            .init(id: UUID().newUUID, foodType: MenuItemType.Dessert.rawValue, foodName: "", imageName: "Little Lemon logo")
        ]
        let group = Dictionary(grouping: menuItems, by: { $0.foodType })
        let menuList = group.map { (key: String, value: [MenuItemModel]) in
            let value = value.enumerated().map { (index, item) in
                var item = item
                item.foodName = "\(item.foodType) \(index)"
                return item
            }
            let menu = MenuModel(menuName: key, menuItems: value)
            return menu
        }
        return menuList
    }
}
