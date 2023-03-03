//
//  CartButton.swift
//  eshop
//
//  Created by ひがしかいと on 2023/03/02.
//

import SwiftUI

struct CartButton: View {
    var numberOfProducts: Int
    
    var body: some View {
        ZStack(alignment: .topTrailing){
            Image(systemName: "cart")
                .padding(.top, 5)
            if numberOfProducts>0{
                Text("\(numberOfProducts)")
                    .font(.caption2.bold())
                    .foregroundColor(.white)
                    .frame(width:15, height:15)
                    .background(Color(hue: 0.423, saturation: 0.892, brightness: 0.701))
                    .cornerRadius(50)
            }
        }
    }
}

struct CartButton_Previews: PreviewProvider {
    static var previews: some View {
        CartButton(numberOfProducts: 1)
    }
}
