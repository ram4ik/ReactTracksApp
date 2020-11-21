//
//  Network.swift
//  ReactTracksApp
//
//  Created by Ramill Ibragimov on 21.11.2020.
//

import Foundation
import Apollo

class Network {
    static let shared = Network()
    private(set) lazy var apollo = ApolloClient(url: URL(string: "http://127.0.0.1:8000/graphql/")!)
}
