//
//  HomeViewViewModel.swift
//  TeeRexStore
//
//  Created by Ravi Kishore on 27/02/24.
//

import Foundation

class HomeViewViewModel: ObservableObject {
  private let restServices = TeeRexRestServices()
  @Published var catalogueDetails = [CatalogueDetail]()
  
  @MainActor
  func getCatalogueDetails() async {
    do {
      catalogueDetails = try await restServices.getCatalogueList(path: TeeRexPaths.catalougePath.pathDetails)
    } catch {
       print("error")
    }
  }
}
