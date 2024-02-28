//
//  HomeView.swift
//  TeeRexStore
//
//  Created by Ravi Kishore on 27/02/24.
//

import SwiftUI

struct HomeView: View {
  @StateObject private var viewModel = HomeViewViewModel()
  @State private var searchText = ""
  
  // 1. Number of items will be display in row
      var columns: [GridItem] = [
          GridItem(.flexible()),
          GridItem(.flexible()),
      ]
      // 2. Fixed height of card
      let height: CGFloat = 150
  
  var body: some View {
    NavigationView {
      VStack {
        ScrollView {
          // 4. Populate into grid
          LazyVGrid(columns: columns, spacing: 20) {
            ForEach(viewModel.catalogueDetails, id: \.self) { card in
              CardView(catalogueDetail: card)
                .shadow(color: .gray, radius: 10)
                  .cornerRadius(5)
            }
          }
        }.padding()
      }.navigationTitle("TeeRex Store")
        .searchable(text: $searchText, prompt: "Search for products...")
       .task {
          await viewModel.getCatalogueDetails()
        }
       .toolbar {
         Button {
             print("Edit button was tapped")
         } label: {
           Image(systemName: "cart")
         }
         
         Button {
             print("Edit button was tapped")
         } label: {
           Image(systemName: "slider.horizontal.3")
         }
       }
    }
  }
}

#Preview {
    HomeView()
}
