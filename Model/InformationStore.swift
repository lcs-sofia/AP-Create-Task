//
//  InformationStore.swift
//  AP Create Task (iOS)
//
//  Created by Sofia Andrade on 2022-03-26.
//

import Foundation
class InformationStore: ObservableObject {
    
    var sessions: [Information]
        
    init() {
        
        let url = Bundle.main.url(forResource: "grovetimes", withExtension: "json")!
        
        let data = try! Data(contentsOf: url)
        
        sessions = try! JSONDecoder().decode([Information].self, from: data)
        
        sessions.sort(by: {
            $0.firstname < $1.firstname
        })
        
    }
    
}

var testStore = InformationStore()
