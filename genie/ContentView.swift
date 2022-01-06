//
//  ContentView.swift
//  genie
//
//  Created by Nirranjan Akilan on 1/5/22.
//

import SwiftUI

struct ContentView: View {
    struct AddProductsView: View {
        var body: some View{
            Text("Add Product Page")
                .navigationTitle("Add Item")
        }
    }
    
    struct ComboResultView: View {
        var body: some View{
            Text("Combinations Results Page")
                .navigationTitle("Combinations")
        }
    }
    
    struct EditBudgetView: View {
        var body: some View{
            Text("Edit Budget Page")
                .navigationTitle("Budget")
        }
    }
    
    struct SortWishListView: View {
        var body: some View{
            Text("Wishlist Sorting Page")
                .navigationTitle("Wishlist")
        }
    }
    

    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: AddProductsView()){
                    Text("Add Item")
                }
                NavigationLink(destination: ComboResultView()){
                    Text("View Combinations")
                }
                NavigationLink(destination: EditBudgetView()){
                    Text("Change Budget")
                }
                NavigationLink(destination: SortWishListView()){
                    Text("Sort Wishlist")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
