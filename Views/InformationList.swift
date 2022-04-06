//
//  InformationList.swift
//  AP Create Task (iOS)
//
//  Created by Sofia Andrade on 2022-03-28.
//

import SwiftUI

struct InformationList: View {
    
    // Connect to the datastore
    @ObservedObject var store : InformationStore
    
    // The search term entered by the user
    @State private var searchTerm = ""
    
    var body: some View {
        List(filter(originalList: store.sessions, using: searchTerm), id: \.self) { currentSession in
            NavigationLink(destination: InformationDetail(session : currentSession)) {
                HStack {
                    VStack(alignment: .leading) {
                        Text(currentSession.firstname)
                        Text(currentSession.lastname)
                            .font(.subheadline)
                    }
                }
            }
        }
        .navigationTitle("Grove Times")
        .searchable(text: $searchTerm)
    }
    
    func filter(originalList: [Information], using term: String) -> [Information] {
        // User is not searching...
        if term.isEmpty {
            // ...so return the original list
            return originalList
        } else {
    
            // Return the filtered list
            var filteredList: [Information] = [Information(firstname: "Pete",
                                                           lastname: "Andras",
                                                           zoomLink: "https://lakefieldcs.zoom.us/j/82229406595 Passcode: andras",
                                                           monday: "1:30 - 2:00",
                                                           tuesday: "12:30 - 1:00",
                                                           thursday:"By Appointment",
                                                           friday: "By Appointment",
                                                           id: 2)]
            for currentSession in originalList {
                if currentSession.firstname.contains(term) {
                    filteredList.append(currentSession)
                }
            }
            return filteredList
        }
    }
}

struct InformationList_Previews: PreviewProvider {
    static var previews: some View {
        InformationList(store: testStore)
    }
}
