//
//  WebService.swift
//  GettingStartedAsyncAwait
//
//  Created by Artem Golovchenko on 2024-11-07.
//

import Foundation

class WebService {
    
    func getDates() async throws -> CurrentDate? {
        guard let url = URL(string: "https://ember-sparkly-rule.glitch.me/current-date") else {
            fatalError("URL is incorrect")
        }
        
        let (data, _) = try await URLSession.shared.data(from: url)
        return try? JSONDecoder().decode(CurrentDate.self, from: data)
    }
}
