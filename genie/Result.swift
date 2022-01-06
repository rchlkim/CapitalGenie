//
//  Result.swift
//  genie
//
//  Created by Michelle Ly on 1/6/22.
//

import SwiftUI

struct Result: View {
    // Replace combination with each number
    // var combination: Int
    var body: some View {
        VStack(alignment: .leading, spacing: 0){
            Text("1")
                .font(.title)
                .padding()
            ScrollView(.horizontal, showsIndicators: false) {
                            HStack(alignment: .top, spacing: 0) {
                                Image("Logo.png")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 180.0, height: 180.0)
                                Image("Logo.png")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 180.0, height: 180.0)
                                Image("Logo.png")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 180.0, height: 180.0)
                                Image("Logo.png")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 180.0, height: 180.0)
                }
            }
            Text("Total Price: $100")
                .padding()
                .padding(.trailing, 50)
            Text("Total Cashback: 5%")
                .padding()
                .padding(.trailing, 50)
        }
    }
}

struct Result_Previews: PreviewProvider {
    static var previews: some View {
        Result()
    }
}
