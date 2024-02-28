//
//  APIError.swift
//  TeeRexStore
//
//  Created by Ravi Kishore on 26/02/24.
//

import Foundation

enum ApiError: Error {
  case requestFailed(description: String)
  case invalidData
  case responseUnsuccessful(description: String)
  case jsonConversionFailure(description: String)
  case jsonParsingFailure
  case failedSerialization
  case noInternet
  case invalidUrl
  
  var customDescription: String {
    switch self {
    case let .requestFailed(description): return "Request Failed: \(description)"
    case .invalidData: return "Invalid Data)"
    case let .responseUnsuccessful(description): return "Unsuccessful: \(description)"
    case let .jsonConversionFailure(description): return "JSON Conversion Failure: \(description)"
    case .jsonParsingFailure: return "JSON Parsing Failure"
    case .failedSerialization: return "Serialization failed."
    case .noInternet: return "No internet connection"
    case .invalidUrl: return "Invalid URL"
    }
  }
}
