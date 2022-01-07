//
//  CombinationResult.swift
//  genie
//
//  Created by Michelle Ly on 1/6/22.
//

import SwiftUI

struct CombinationResult: View {
    
    @ObservedObject var model = ViewModel();
     var op: OptionOne{
        return OptionOne(items: model.list)
    }
    init(){
        model.getItem()
        
    }
    
    
    var body: some View {
        var combo: [WishlistItem] = []
        var list: [WishlistItem] = listPrint(combos: &combo)
            List(list){ item in
                Text(item.productName)}
    }
               
            
        
        

    
//    NavigationView {

        
            
        
        
//        .navigationTitle("Results")
    
    func listPrint(combos: inout [WishlistItem]) -> [WishlistItem]{
    var lists: [[WishlistItem]] = op.getCombination(budget: 60)
    for i in 0..<3{
        for j in 0..<lists[i].endIndex{
            //print(lists[i][j].productName + "\n")
            combos.append(lists[i][j])
        }
    }
        return combos
}
//    func printL(name: String) -> some View{
//        Text (name)
//            .padding()
//    }
    
    
}

struct CombinationResult_Previews: PreviewProvider {
    static var previews: some View {
        CombinationResult()
    }
}
