//
//  ContentView.swift
//  genie
//
//  Created by Nirranjan Akilan on 1/5/22.
//

import SwiftUI

struct ContentView: View {
//    struct ComboResultView: View {
//        var body: some View{
//            Text("Combinations Results Page")
//                .navigationTitle("Combinations")
//        }
//    }
    
    struct EditBudgetView: View {
        var body: some View{
            Text("Edit Budget Page")
                .navigationTitle("Budget")
        }
    }

    @State var isPlaying : Bool = false
    var body: some View {
        
        NavigationView {
            List {
                Section {
                    VStack() {
                        Image("WhiteCatLogo.png")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 190.0, height: 190.0)
                            .listRowBackground(Color(.secondarySystemBackground))
                            .position(x: 140, y: 100)
                        VStack() {
                            Text("Your Budget")
                                    .listRowBackground(Color(.secondarySystemBackground))
                                    .frame(maxWidth: .infinity, alignment: .center)
                                    .padding(.top, 5)
                            Text("$200.78")
                                .listRowBackground(Color(.secondarySystemBackground))
                                .font(Font.system(size: 40))
                                .frame(maxWidth: .infinity, alignment: .center)
                        }
                        .padding(-15)
                    }
                    .listRowBackground(Color(.secondarySystemBackground))
                }
                NavigationLink(destination: AddProductsView()){
                    Text("Add Item")
                }
                NavigationLink(destination: CombinationResult()){
                    Text("View Combinations")
                }
                NavigationLink(destination: EditBudgetView()){
                    Text("Change Budget")
                }
                NavigationLink(destination: SortWishlistView()){
                    Text("Sort Wishlist")
                }
                .navigationTitle("Aladdin's Wishlist")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
