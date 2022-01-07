//
//  AddProductsView.swift
//  genie
//
//  Created by Nirranjan Akilan on 1/6/22.
//

import SwiftUI
import Firebase

struct AddProductsView: View {
    @State var productName: String = "";
    @State var productPrice = "";
    @State var purchaseLink: String = "";
    @State var preference = "";
    @State private var image = UIImage();
    @State private var showSheet = false;
    
    func addData(name: String, price: Int, link: String, productPref: Int, prodImage: String?){
        let db = Firestore.firestore();
        db.collection("wishlist-items").addDocument(data: ["product-image": prodImage, "product-name": name, "product-preference": productPref, "product-price": price, "purchase-link": link]) { error in
            if error == nil {
                print("Very Nice!")
            }
            else {
                print("Oh No!")
            }
        }
    }
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
            Button("Save", action: {
                let imageData = image.jpegData(compressionQuality: 0);
                let imageString = imageData?.base64EncodedString();
                let parsedPrice = Int(productPrice) ?? 10;
                let parsedPref = Int(preference) ?? 4;
                addData(name: productName, price: parsedPrice, link: purchaseLink, productPref: parsedPref, prodImage: imageString);
            })
        }
        .navigationTitle("Add Item")
    }
}

struct AddProductsView_Previews: PreviewProvider {
    static var previews: some View {
        AddProductsView()
    }
}
