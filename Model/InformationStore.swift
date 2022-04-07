//
//  InformationStore.swift
//  AP Create Task (iOS)
//
//  Created by Sofia Andrade on 2022-03-26.
//

import Foundation
class InformationStore: ObservableObject {
    
    // Contains info for all the sessions
    var sessions: [Information]
    
        
    init() {
        
        //Pull data from grovetimes
        
        let url = Bundle.main.url(forResource: "grovetimes", withExtension: "json")!
        
        let data = try! Data(contentsOf: url)
        
        // Place data into sessions
        
        sessions = try! JSONDecoder().decode([Information].self, from: data)
        
        //Sort by first name
        
        sessions.sort(by: {
            $0.firstname < $1.firstname
        })
        
    }
    
}

var testStore = InformationStore()
