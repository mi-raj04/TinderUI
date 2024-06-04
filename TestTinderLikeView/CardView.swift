//
//  CardView.swift
//  TestTinderLikeView
//
//  Created by mind on 03/06/24.
//

import SwiftUI

struct CardView: View, Identifiable {
    let id = UUID()
    let image: String
    let title: String
    
    var body: some View {
        Image(image)
            .resizable()
            .scaledToFill()
            .frame(minWidth: 0, maxWidth: .infinity)
            .cornerRadius(12)
            .padding(.horizontal, 15)
            .overlay(alignment: .bottom) {
                VStack {
                    
                    Text(title)
                        .font(.system(.headline, design: .rounded))
                        .fontWeight(.bold)
                        .padding(.horizontal, 30)
                        .padding(.vertical, 10)
                        .background(.white)
                        .cornerRadius(5)
                }
                .padding([.bottom], 20)
            }
    }
}

#Preview {
    CardView(image: "yosemite-usa", title: "Yosemite, USA")
}
