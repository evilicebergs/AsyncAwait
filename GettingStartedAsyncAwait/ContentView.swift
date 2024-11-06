//
//  ContentView.swift
//  GettingStartedAsyncAwait
//
//  Created by Mohammad Azam on 7/9/21.
//

import SwiftUI

struct CurrentDate: Decodable, Identifiable {
    let id = UUID()
    let date: String
    
    private enum CodingKeys: String, CodingKey {
        case date = "date"
    }
}

struct ContentView: View {

    var body: some View {
        NavigationStack {
            List(1...10, id: \.self) { index in
                Text("\(index)")
            }.listStyle(.plain)
            
            .navigationTitle("Dates")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        
                    } label: {
                        Image(systemName: "arrow.clockwise.circle")
                    }

                }
            }
        }
    }
}

#Preview {
    ContentView()
}
