//
//  ProductRow.swift
//  eshop
//
//  Created by ひがしかいと on 2023/03/02.
//

import SwiftUI

struct ProductRow: View {
    @EnvironmentObject var cartManager: CartManager
    var product: Product
    
    var body: some View {
        HStack(spacing: 20) {
            Image(product.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width:50)
                .cornerRadius(10)
            VStack(alignment: .leading, spacing: 10){
                Text(product.name)
                    .bold()
                    .font(.title2)
                Text("\(product.price)ベル")
                    .bold()
            }
            
            Spacer()
            
            Image(systemName: "trash")
                .foregroundColor(Color(hue: 1, saturation: 1, brightness: 1))
                .onTapGesture {
                    cartManager.removeFromCart(product: product)
                }
        }
        .padding(.horizontal)
        .frame(maxWidth: .infinity, alignment: .leading)
        
    }
}

struct ProductRow_Previews: PreviewProvider {
    static var previews: some View {
        ProductRow(product: productList[3])
            .environmentObject(CartManager())
    }
}
