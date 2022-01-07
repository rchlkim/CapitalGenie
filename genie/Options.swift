//
//  Options.swift
//  genie
//
//  Created by Megane Lin on 1/6/22.
//

import SwiftUI

class OptionOne: Identifiable{
    
    var items: [WishlistItem]
    
    init(items: [WishlistItem]){
        self.items = items;
    }
    
   public func getCombination(budget: Int) -> [[WishlistItem]]{
        let itemsInBudget = items.filter{$0.productPrice < budget}
        //this might be a problem \/
        var allCombo: [[WishlistItem]] = [[]]
        var curCombo: [WishlistItem] = []
        helper(allCombos: &allCombo,
               allItems: itemsInBudget,
               curCombo: &curCombo ,sum: budget,pos: 0)
        return sortList(allCombo: &allCombo)
    }
    
    
    private func helper(allCombos: inout [[WishlistItem]],
                        allItems: [WishlistItem],
                        curCombo: inout [WishlistItem],
                        sum: Int, pos: Int) -> Void{
        
        if(sum == 0){
            allCombos.append(curCombo)
        } else if (sum > 0 ){
            
            for i in (pos..<allItems.endIndex){
                print(i)
                print(allItems.endIndex)
                let price: Int = allItems[i].productPrice
                
                if(sum >= price){
                    curCombo.append(allItems[i])
                    helper(allCombos: &allCombos,
                           allItems: allItems,
                           curCombo: &curCombo,
                           sum: (sum - price), pos: i)
                    curCombo.removeLast()
                }
            }
        }
    }
        
        func sortList(allCombo: inout [[WishlistItem]]) -> [[WishlistItem]]{
            //uses bubble sort
        let n: Int = allCombo.endIndex
            for i in (0..<n-1){
                for j in (0..<n-i-1){
                    if(sumOfRank(list: allCombo[j]) > sumOfRank(list: allCombo[j+1])){
                        var temp = allCombo[j]
                        allCombo[j] = allCombo[j+1]
                        allCombo[j+1] = temp
                    }
                }
            }
            return allCombo
        }
        
        func sumOfRank(list: [WishlistItem]) -> Int{
            var sum: Int = 0
            print(list.capacity)
            for i in 0..<list.endIndex{
                sum = sum + list[i].productPreference
            }
            return sum
        }
        
        
    }
    
    
    
    
    

