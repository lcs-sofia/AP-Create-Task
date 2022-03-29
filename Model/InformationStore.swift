//
//  InformationStore.swift
//  AP Create Task (iOS)
//
//  Created by Sofia Andrade on 2022-03-26.
//

import Foundation
class InformatioStore: ObservableObject {
    
    var places: [Information]
        
    init() {
        
        let url = Bundle.main.url(forResource: "grovetimes", withExtension: "json")!
        
        let data = try! Data(contentsOf: url)
        
        places = try! JSONDecoder().decode([Information].self, from: data)
        
        places.sort(by: {
            $0.firstname < $1.firstname
        })
        
    }
    
}
