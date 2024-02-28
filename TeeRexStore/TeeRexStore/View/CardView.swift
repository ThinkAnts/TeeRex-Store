//
//  CardView.swift
//  TeeRexStore
//
//  Created by Ravi Kishore on 27/02/24.
//

import SwiftUI

struct CardView: View {
  var catalogueDetail: CatalogueDetail
  var body: some View {
    VStack {
      
      AsyncImage(url: URL(string: catalogueDetail.imageURL)) { phase in
        switch phase {
        case .empty:
          ProgressView()
        case .success(let image):
          image.resizable()
            //.aspectRatio(contentMode: .fit)
            .frame(maxWidth: 200, maxHeight: 150)
        case .failure:
          Image(systemName: "photo")
        @unknown default:
          // Since the AsyncImagePhase enum isn't frozen,
          // we need to add this currently unused fallback
          // to handle any new cases that might be added
          // in the future:
          EmptyView()
        }
      }.padding(.all)
      
      HStack(spacing: 50) {
        Text("250")
          .font(.system(size: 13, weight: .light, design: .default))
        Button {
          //
        } label: {
          Text("Add to cart")
            .font(.system(size: 15, weight: .light, design: .default))
        }.buttonStyle(.bordered)
          .background(.black)
          .foregroundStyle(.white)
      }.padding(.all)
    } 
  }
}

#Preview {
  CardView(catalogueDetail: CatalogueDetail(id: 1,
                                            imageURL: "https://geektrust.s3.ap-southeast-1.amazonaws.com/coding-problems/shopping-cart/blue-polo-women.png",
                                            name: "Pink Polo",
                                            type: "Polo",
                                            price: 220,
                                            currency: "INR",
                                            color: "Blue",
                                            gender: "Men",
                                            quantity: 3))
}
