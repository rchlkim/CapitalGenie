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
    @State private var image = UIImage();
    @State private var showSheet = false;
    
    var body: some View{
        Form {
            TextField("Product Name", text: $productName)
            TextField("Product Price", text: $productPrice)
                .keyboardType(.numberPad)
            TextField("Purchase Link", text: $purchaseLink)
            TextField("Preference", text: $preference)
                .keyboardType(.numberPad)
            HStack {
                Image(uiImage:self.image)
                    .resizable()
                    .cornerRadius(50)
                    .frame(width:100,height:100)
                    .background(Color.black.opacity(0.2))
                    .aspectRatio(contentMode:.fill)
                    .clipShape(Circle())
                Button("Select Photo", action: {showSheet = true})
            }.padding(.horizontal, 20)
                .sheet(isPresented: $showSheet){
                    ImagePicker(sourceType: .photoLibrary, selectedImage: self.$image)
                }
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
