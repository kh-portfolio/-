//
//  productCard.swift
//  eshop
//
//  Created by ひがしかいと on 2023/03/02.
//

import SwiftUI

struct productCard: View {
    @EnvironmentObject var cartManager: CartManager
    var product: Product
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            ZStack(alignment: .bottom){
                Image(product.image)
                    .resizable()
                    .cornerRadius(20)
                    .frame(width: 250)
                    .scaledToFit()
                
                VStack(alignment: .leading){
                    Text(product.name)
                        .bold()
                        .font(.title3)
                  
                    Text("\(product.price)ベル")
                        .bold()
                        .frame(alignment: .center)
                }
                .padding()
                .frame(width: 180, alignment: .leading)
                .background(.ultraThinMaterial)
                .cornerRadius(20)
            }
            .frame(width: 200, height: 250)
        .shadow(radius: 3)
            
            Button {
                cartManager.addToCart(product: product)
            } label: {
                Image(systemName: "plus")
                    .padding(10)
                    .foregroundColor(.white)
                    .background(.black)
                    .cornerRadius(50)
                    .padding()
            }
        }
    }
}

struct productCard_Previews: PreviewProvider {
    static var previews: some View {
        productCard(product: productList[0])
            .environmentObject(CartManager())
    }
}
