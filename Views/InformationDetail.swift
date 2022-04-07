//
//  InformationDetail.swift
//  AP Create Task (iOS)
//
//  Created by Sofia Andrade on 2022-03-28.
//

import SwiftUI

struct InformationDetail: View {
    // Layout for the app
    
    let session: Information
    var body: some View {
        VStack(alignment: .leading) {
            VStack(alignment: .leading) {
                
                // Title
    
            Text("ZOOM LINK: ")
                .font(.title2)
                .bold()
            Text(session.zoomLink)
            }
            .padding(.vertical)
            
            // Title
            
            Text("Weekdays for Grove Time:")
                .font(.title2)
                .bold()
            Group {
                Text("Monday: \(session.monday)")
                Text("Tuesday: \(session.tuesday)")
                Text("Thursday: \(session.thursday)")
                Text("Friday: \(session.friday)")
            }
            Spacer()
        }
        .navigationTitle("\(session.firstname) \(session.lastname)")
        // Organize list by first and last names
    }
    
    
    struct InformationDetail_Previews: PreviewProvider {
        static var previews: some View {
            NavigationView {
                InformationDetail(session: Information.example)
                
            }
        }
    }
}
