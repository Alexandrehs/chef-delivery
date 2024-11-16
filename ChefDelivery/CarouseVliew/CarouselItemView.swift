//
//  CarrosselItemView.swift
//  ChefDelivery
//
//  Created by Alexandre Henrique da Silva on 15/11/24.
//

import SwiftUI

struct CarouselItemView: View {
    let order: OrderType
    
    var body: some View {
        Image(order.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12.0)
    }
}

#Preview {
CarouselItemView(order: OrderType(id: 0, name: "", image: "barbecue-banner"))
        .previewLayout(.sizeThatFits)
        .padding()
}
