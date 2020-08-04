//
//  PriceView.swift
//  starducks
//
//  Created by MAC on 2020/7/24.
//

import SwiftUI

struct PriceLabel: View {
    @Environment(\.locale) var locale
    let menu : DrinkMenu
    
    var body: some View {
        HStack {
            Group {
                Text(locale.currencySymbol!)
                    .fontWeight(.semibold)
                Text(" " + String(format: "%.2f", menu.price)).fontWeight(.semibold)
            }.font(.system(size: 32))
            .foregroundColor(Color("subText"))
        }.environment(\.layoutDirection, .leftToRight)
    }
}

struct PriceView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            PriceLabel(menu: drinksData[0].menus[0])
                .previewLayout(.sizeThatFits)
                .environment(\.locale, .init(identifier:"zh_cn"))
            PriceLabel(menu: drinksData[0].menus[0])
                .previewLayout(.sizeThatFits)
                .environment(\.locale, .init(identifier:"zh_tw"))
            PriceLabel(menu: drinksData[0].menus[0])
                .previewLayout(.sizeThatFits)
                .environment(\.locale, .init(identifier:"ko_kr"))
        }
    }
}