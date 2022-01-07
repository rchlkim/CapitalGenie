//
//  ViewModel.swift
//  genie
//
//  Created by Nirranjan Akilan on 1/6/22.
//

import Foundation
import Firebase

class ViewModel: ObservableObject {
    @Published var list = [WishlistItem]()
    
    func getItem(){
        //Get reference to the database
        let db = Firestore.firestore();
        
        // read the documents at the wishlist items path
        db.collection("wishlist-items").getDocuments { snapshot, error in
            //check for errors
            if error == nil {
                //no errors
                print("Getting the items was a success")
                self.list = snapshot!.documents.map { d in
                    return WishlistItem(id: d.documentID, productImage: d["product-image"] as! String, productName: d["product-name"] as! String, productPreference: d["product-preference"] as! Int, productPrice: d["product-price"] as! Int, purchaseLink: d["purchase-link"] as! String)
                }
            }
            else {
                //there was an error
                print("There was an error in getting the items")
            }
        }
    }
}
