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
        VStack(alignment: .leading, spacing: 20){
            Text("1")
                .font(.title)
            ScrollView(.horizontal, showsIndicators: false) {
                            HStack(alignment: .top, spacing: 0) {
                                Image("Logo.png")
                                    .frame(width: 180.0, height: 180.0)
                            }
            
         /*
         HStack(alignment: .bottom, spacing: 10){
             Image("Logo.png")
                 .resizable()
                 .aspectRatio(contentMode: .fit)
                 .padding()
                 .frame(width: 180.0, height: 180.0)
            }
          */
        Text("Total Price: ")
        Text("Tota Cashback: ")
            }
        }
    }
}

struct Result_Previews: PreviewProvider {
    static var previews: some View {
        Result()
    }
}
