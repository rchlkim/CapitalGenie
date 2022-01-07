//
//  SortWishlisViewt.swift
//  genie
//
//  Created by Rachel Kim on 1/6/22.
//

import SwiftUI


enum MySort {
    case rank, LtoH, HtoL
}

struct SortWishlistView: View {
    
    var sorts = ["Rank","Price (Low to High)", "Price (High to Low)" ]
    @State private var selectedSort = 0
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text("Your Wishlist")
                .font(.title)
                .fontWeight(.bold)
                .padding(.top, 5)
                .padding(.bottom, 10)
            Picker(selection: $selectedSort, label: Text("Sort By ")) {
                ForEach(0..<sorts.count) {
                    Text("Sort By " + self.sorts[$0])
                }
            }
            .pickerStyle(MenuPickerStyle())
            
            Spacer()
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 10) {
                    HStack(alignment: .center, spacing: 20) {
                        ProductBox();
                        ProductBox();
                    }
                    HStack(alignment: .center, spacing: 20) {
                        ProductBox();
                        ProductBox();
                    }
                    HStack(alignment: .center, spacing: 20) {
                        ProductBox();
                        ProductBox();
                    }
                    HStack(alignment: .center, spacing: 20) {
                        ProductBox();
                        ProductBox();
                    }
                }
            }
        }
    }
}


struct SortWishlistView_Previews: PreviewProvider {
    static var previews: some View {
        SortWishlistView()
    }
}
