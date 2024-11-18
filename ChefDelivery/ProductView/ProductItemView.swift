//
//  ProductItemView.swift
//  ChefDelivery
//
//  Created by Alexandre Henrique da Silva on 17/11/24.
//

import SwiftUI

struct ProductItemView: View {
    let product: ProductType
    var body: some View {
        HStack(spacing: 8) {
            VStack(alignment: .leading, spacing: 8) {
                Text(product.name)
                    .bold()
                Text(product.description)
                    .foregroundStyle(.black.opacity(0.5))
                Text(product.formattedPrice)
                    .bold()
                    
            }
            Spacer()
            Image(product.image)
                .resizable()
                .scaledToFit()
                .cornerRadius(12.0)
                .frame(width: 120, height: 120)
                .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/.opacity(0.3), radius: 12, x: 6, y: 8)
        }
        .padding()
    }
}

#Preview {
    ProductItemView(product: storesMock[0].products[0])
}
