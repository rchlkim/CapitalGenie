//
//  CombinationResult.swift
//  genie
//
//  Created by Michelle Ly on 1/6/22.
//

import SwiftUI

struct CombinationResult: View {
    var body: some View {
    NavigationView {
        List {
            Text ("Sorted by: Rank")
                .padding()
            Result()
            Result()
            Result()
            }
        .navigationTitle("Results")
        }
    }
}

struct CombinationResult_Previews: PreviewProvider {
    static var previews: some View {
        CombinationResult()
    }
}
