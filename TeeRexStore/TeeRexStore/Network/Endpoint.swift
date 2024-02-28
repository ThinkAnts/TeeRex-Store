//
//  Endpoint.swift
//  TeeRexStore
//
//  Created by Ravi Kishore on 27/02/24.
//

import Foundation

struct Endpoint {
  let host = "geektrust.s3.ap-southeast-1.amazonaws.com"
  let path: String
}

extension Endpoint {
  var url: URL? {
    var urlComponents = URLComponents()
    urlComponents.scheme = "https"
    urlComponents.host = host
    urlComponents.path = path
    return urlComponents.url
  }
}


enum TeeRexPaths: String {
  case catalougePath
  
  var pathDetails: String {
    switch self {
    case .catalougePath: return "/coding-problems/shopping-cart/catalogue.json"
    }
  }
}
