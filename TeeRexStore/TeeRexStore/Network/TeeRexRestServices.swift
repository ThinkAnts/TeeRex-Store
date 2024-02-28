//
//  TeeRexRestServices.swift
//  TeeRexStore
//
//  Created by Ravi Kishore on 27/02/24.
//

import Foundation

class TeeRexRestServices: RestServices {
  func getCatalogueList(path: String) async throws -> [CatalogueDetail] {
    let endpoint = Endpoint(path: path)
    return try await NetworkManager().get(from: endpoint)
  }
}
