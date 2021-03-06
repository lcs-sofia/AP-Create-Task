//
//  InformationList.swift
//  AP Create Task (iOS)
//
//  Created by Sofia Andrade on 2022-03-28.
//

import SwiftUI

struct InformationList: View {
    
    // Link to the datastore
    @ObservedObject var store : InformationStore
    
    // Search term put in by the user
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
        
        //Search Bar
        
        .navigationTitle("Grove Times")
        .searchable(text: $searchTerm, placement: .navigationBarDrawer(displayMode: .always))
    }
    
    func filter(originalList: [Information], using term: String) -> [Information] {
        //Empty (NOTHING)
        
        if term.isEmpty {
            // Bring back original list
            
            return originalList
        } else {
    
            // Give back filtered list
            var filteredList: [Information] = [Information(firstname: "Pete",
                                                           lastname: "Andras",
                                                           zoomLink: "https://lakefieldcs.zoom.us/j/82229406595 Passcode: andras",
                                                           monday: "1:30 - 2:00",
                                                           tuesday: "12:30 - 1:00",
                                                           thursday:"By Appointment",
                                                           friday: "By Appointment",
                                                           id: 2)]
            for currentSession in originalList {
                if currentSession.lastname.contains(term) {
                    filteredList.append(currentSession)
                }
            }
            filteredList.removeFirst()
            return filteredList
        }
    }
}

struct InformationList_Previews: PreviewProvider {
    static var previews: some View {
        InformationList(store: testStore)
    }
}
