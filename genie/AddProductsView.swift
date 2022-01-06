//
//  AddProductsView.swift
//  genie
//
//  Created by Nirranjan Akilan on 1/6/22.
//

import SwiftUI

struct AddProductsView: View {
    @State var productName: String = "";
    @State var productPrice = "";
    @State var purchaseLink: String = "";
    @State var preference = "";
    
    var body: some View{
        Form {
            TextField("Product Name", text: $productName)
            TextField("Product Price", text: $productPrice)
                .keyboardType(.numberPad)
            TextField("Purchase Link", text: $purchaseLink)
            TextField("Preference", text: $preference)
                .keyboardType(.numberPad)
            Button("Save", action: {/* add item to firebase */})
        }
        .navigationTitle("Add Item")
    }
}

struct AddProductsView_Previews: PreviewProvider {
    static var previews: some View {
        AddProductsView()
    }
}
