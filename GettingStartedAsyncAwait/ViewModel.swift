//
//  ViewModel.swift
//  GettingStartedAsyncAwait
//
//  Created by Artem Golovchenko on 2024-11-07.
//

import Foundation

@MainActor
class ViewModel: ObservableObject {
    
    @Published var currentDates: [CurrentDateViewModel] = []
    
    func getAllDates() async {
        do {
            let currentDate = try await WebService().getDates()
            if let currentDate = currentDate {
                let currentDateViewModel = CurrentDateViewModel(currentDate: currentDate)
                //adding DispatchQueue to be able to update view
                    self.currentDates.append(currentDateViewModel)
            }
        } catch {
            print(error)
        }
    }
    
}

struct CurrentDateViewModel {
    let currentDate: CurrentDate
    
    var date: String {
        currentDate.date
    }
    var id: UUID {
        currentDate.id
    }
}
