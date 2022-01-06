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
        HStack(alignment: .top, spacing: 60) {
            VStack(alignment: .leading, spacing: 20) {
                Image("Logo.png")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding()
                    .frame(width: 180.0, height: 180.0)
                }
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
