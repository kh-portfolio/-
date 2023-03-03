//
//  CartView.swift
//  eshop
//
//  Created by ひがしかいと on 2023/03/02.
//

import SwiftUI

struct CartView: View {
    @EnvironmentObject var cartManager: CartManager
    var body: some View {
        ScrollView{
            if cartManager.products.count > 0 {
                ForEach(cartManager.products, id: \.id) {
                    product in
                    ProductRow(product: product)
                }
                
                HStack {
                    Spacer()
                    Text("ぜんぶで")
                        .bold()
                        .padding()
                    Text("\(cartManager.total)ベル")
                        .bold()
                        .padding()
                }
                
            } else {
                Text("まだなにもはいってないよ！")
                    .padding(.top)
                    .padding(.top)
                    .bold()
                    .font(.title)
            }
        }
        .background(
                Image("待ち受け1")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all))
        .navigationTitle(Text("かいものかご"))
        .padding(.top)
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
            .environmentObject(CartManager())
    }
}
