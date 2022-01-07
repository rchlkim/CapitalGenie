//
//  ProductBox.swift
//  genie
//
//  Created by Rachel Kim on 1/6/22.
//

import SwiftUI

struct ProductBox: View {
    @State private var productImage:UIImage;
    @State private var productName:String;
    @State private var productPrice:Int;
    @State private var productPreference:Int;
    
    init(image: String, name: String, price: Int, preference: Int){
        let imageData = Data(base64Encoded: image)
        productImage = UIImage(data:imageData!)!
        productName = name
        productPrice = price
        productPreference = preference
    }
    var body: some View {
        HStack(alignment: .center, spacing: 40) {
            ZStack() {
                VStack(alignment: .leading) {
                    Image(uiImage: productImage)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 150.0, height: 150.0)
                        .cornerRadius(5)
                    Text(productName)
                    Text("$" + String(productPrice))
                    //Text("Cashback 20%")
                }
                Image(systemName: String(productPreference) + ".circle.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30)
                    .padding(.bottom, 215)
                    .padding(.trailing, 145)
            }
            
        }
    }
}

struct ProductBox_Previews: PreviewProvider {
    static var previews: some View {
        ProductBox(image: "Lamp.png", name:"temp", price:100, preference: 1)
    }
}
