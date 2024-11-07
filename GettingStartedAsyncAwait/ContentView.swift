//
//  ContentView.swift
//  GettingStartedAsyncAwait
//
//  Created by Mohammad Azam on 7/9/21.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var vm = ViewModel()
    
    var body: some View {
        NavigationStack {
            List(vm.currentDates, id: \.id) { currentDate in
                Text("\(currentDate.date)")
            }.listStyle(.plain)
            
            .navigationTitle("Dates")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        Task {
                            await vm.getAllDates()
                        }
                    } label: {
                        Image(systemName: "arrow.clockwise.circle")
                    }

                }
            }
            .task {
                await vm.getAllDates()
            }
        }
    }
}

#Preview {
    ContentView()
}
