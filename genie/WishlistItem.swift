//
//  WishlistItem.swift
//  genie
//
//  Created by Nirranjan Akilan on 1/6/22.
//

import Foundation

struct WishlistItem: Identifiable {
    var id: String;
    var productImage: String;
    var productName: String;
    var productPreference: Int;
    var productPrice: Int;
    var purchaseLink: String;
}
