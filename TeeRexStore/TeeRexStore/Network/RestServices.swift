//
//  RestServices.swift
//  TeeRexStore
//
//  Created by Ravi Kishore on 26/02/24.
//

import Foundation

protocol RestServices {
  func getCatalogueList(path: String) async throws -> [CatalogueDetail]
}
