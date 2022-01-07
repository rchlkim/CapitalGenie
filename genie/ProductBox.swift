//
//  ProductBox.swift
//  genie
//
//  Created by Rachel Kim on 1/6/22.
//

import SwiftUI

struct ProductBox: View {
    var body: some View {
        HStack(alignment: .center, spacing: 40) {
            ZStack() {
                VStack(alignment: .leading) {
                    Image("Lamp.png")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 150.0, height: 150.0)
                        .cornerRadius(5)
                    Text("Lamp")
                    Text("$100")
                    Text("Cashback 20%")
                }
                Image(systemName: "1.circle.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30)
                    .padding(.bottom, 215)
                    .padding(.trailing, 145)
            }
            
        }
    }
}

struct ProductBox_Previews: PreviewProvider {
    static var previews: some View {
        ProductBox()
    }
}
