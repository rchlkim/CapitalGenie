//
//  WishlistView.swift
//  genie
//
//  Created by Nirranjan Akilan on 1/6/22.
//

import SwiftUI

struct WishlistView: View {
    @ObservedObject var model = ViewModel();
    
    var body: some View {
        List (model.list) { item in
            Text(item.productName)
        }
    }
    
    init(){
        model.getItem()
    }
}

struct WishlistView_Previews: PreviewProvider {
    static var previews: some View {
        WishlistView()
    }
}
