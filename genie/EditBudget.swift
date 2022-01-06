//
//  EditBudget.swift
//  genie
//
//  Created by Michelle Ly on 1/6/22.
//

import SwiftUI

struct EditBudget: View {
    @State var newBudget = "";
    
    var body: some View {
        Form {
            TextField("New Budget Amount", text: $newBudget)
                .keyboardType(.numberPad)
            Button("Save", action: {/* add item to firebase */})
        }
        .navigationTitle("Add Item")
    }
}

struct EditBudget_Previews: PreviewProvider {
    static var previews: some View {
        EditBudget()
    }
}
