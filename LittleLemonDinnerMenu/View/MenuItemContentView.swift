//
//  MenuItemContentView.swift
//  LittleLemonDinnerMenu
//
//  Created by 11461_amit on 1/9/23.
//

import SwiftUI

struct MenuItemContentView: View {
    let viewModel = MenuItemViewModel()
    
    init() {
        viewModel.menuList = viewModel.fetchData()
    }
    
    var body: some View {
        VStack {
            List(viewModel.menuList) { menu in
                Section(header: Text(menu.menuName)) {
                    let subArrays = menu.menuItems.splitInSubArrays(into: 3)
                    ForEach(subArrays, id: \.self) { items in
                        CollectionView(subArrays: items)
                    }
                }
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemContentView()
    }
}
