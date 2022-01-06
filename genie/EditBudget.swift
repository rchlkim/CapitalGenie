//
//  EditBudget.swift
//  genie
//
//  Created by Michelle Ly on 1/6/22.
//

import SwiftUI

struct EditBudget: View {
    @State var newBudget = "$278.00";
    
    var body: some View {
        NavigationView{
            VStack{
                Spacer()
                Form {
                    Text("Current Budget: ")
                    TextField("New Budget Amount", text: $newBudget)
                        .keyboardType(.numberPad)
                    Button("Save", action: {/* add item to firebase */})
                }
                Spacer()
                Text("Genie Cat's Tips for Setting a Budget")
                    .padding()
                    .font(.system(size: 18, weight: .semibold))
                Text("- Consider the 50/20/30 budget rule: Divide each paycheck into 50% for the essentials, 20% for savings and 30% for everything else")
                    .padding()
                    .font(.system(size: 16, weight: .light))
                Text("- Remember that the budget for each month can vary and adjust accordingly. Expect the unexpected and decide how much to save.")
                    .padding()
                    .font(.system(size: 16, weight: .light))
                Link("More Information on Money Management",
                      destination: URL(string: "https://www.capitalone.com/bank/money-management/")!)
                Image("Genie.png")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200)
            }
        .navigationTitle("Edit Budget Item")
    }
}

struct EditBudget_Previews: PreviewProvider {
    static var previews: some View {
        EditBudget()
        }
    }
}
