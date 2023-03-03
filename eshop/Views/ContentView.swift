//
//  ContentView.swift
//  eshop
//
//  Created by ひがしかいと on 2023/03/02.
//

import SwiftUI

struct ContentView: View {
    @StateObject var cartManager = CartManager()
    var columns = [GridItem(.adaptive(minimum: 160),spacing: 20)]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(productList, id:\.id) { product in productCard(product: product)
                            .environmentObject(cartManager)
                        
                    }
                    
                }
                .padding()
                
            }
            .navigationTitle(Text("つぶきちしょうてん"))
            .background(
                    Image("待ち受け1")
                        .resizable()
                        .scaledToFill()
                        .edgesIgnoringSafeArea(.all)
                        .opacity(0.8))
            .toolbar {
                NavigationLink{
                    CartView()
                        .environmentObject(cartManager)
                } label: {
                    CartButton(numberOfProducts: cartManager.products.count)
                }
                
            }
        }
        
        .navigationViewStyle(StackNavigationViewStyle())
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


