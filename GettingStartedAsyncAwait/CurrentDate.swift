//
//  CurrentDate.swift
//  GettingStartedAsyncAwait
//
//  Created by Artem Golovchenko on 2024-11-07.
//

import Foundation

struct CurrentDate: Decodable, Identifiable {
    let id = UUID()
    let date: String
    
    private enum CodingKeys: String, CodingKey {
        case date = "date"
    }
}
