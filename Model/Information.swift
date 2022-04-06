//
//  Information.swift
//  AP Create Task (iOS)
//
//  Created by Sofia Andrade on 2022-03-26.
//

import Foundation
struct Information: Decodable, Identifiable, Hashable {
    let firstname: String
    let lastname: String
    let zoomLink: String
    let monday: String
    let tuesday: String
    let thursday: String
    let friday: String
    let id: Int
    
    static let example = Information(firstname: "Pete",
                                     lastname: "Andras",
                                     zoomLink: "https://lakefieldcs.zoom.us/j/82229406595 Passcode: andras",
                                     monday: "1:30 - 2:00",
                                     tuesday: "12:30 - 1:00",
                                     thursday:"By Appointment",
                                     friday: "By Appointment",
                                     id: 2)
    
    
}
