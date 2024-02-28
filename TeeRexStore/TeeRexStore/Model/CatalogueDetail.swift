//
//  CatalogueDetail.swift
//  TeeRexStore
//
//  Created by Ravi Kishore on 26/02/24.
//

import Foundation

struct CatalogueDetail: Codable, Identifiable, Hashable {
  let id: Int
  let imageURL: String
  let name: String
  let type: String
  let price: Int
  let currency: String
  let color: String
  let gender: String
  let quantity: Int
  
  private enum CodingKeys: String, CodingKey {
    case id 
    case imageURL
    case name
    case type
    case price
    case currency
    case color
    case gender
    case quantity
  }
}
