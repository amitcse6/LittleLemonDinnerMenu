//
//  CollectionView.swift
//  LittleLemonDinnerMenu
//
//  Created by 11461_amit on 1/9/23.
//

import SwiftUI

struct CollectionView: View {
    let subArrays: [MenuItemModel]
    
    var body: some View {
        VStack {
            HStack {
                ForEach(subArrays) { items in
                    VStack {
                        Spacer()
                        Image(items.imageName)
                            .resizable()
                            .frame(width: 150, height: 150)
                            .foregroundColor(.yellow)
                            .clipShape(Circle())
                            .shadow(radius: 10)
                        Spacer()
                        Text(items.foodName)
                        Spacer()
                    }
                }.padding(.bottom, 16)
            }
        }
    }
}
