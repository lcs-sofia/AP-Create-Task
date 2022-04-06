//
//  InformationDetail.swift
//  AP Create Task (iOS)
//
//  Created by Sofia Andrade on 2022-03-28.
//

import SwiftUI

struct InformationDetail: View {
    
    let session: Information
    var body: some View {
        VStack(alignment: .leading) {
            VStack(alignment: .leading) {
            Text("ZOOM LINK: ")
                .font(.title2)
                .bold()
            Text(session.zoomLink)
            }
            .padding(.vertical)
            
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
    }
    
    
    struct InformationDetail_Previews: PreviewProvider {
        static var previews: some View {
            NavigationView {
                InformationDetail(session: Information.example)
                
            }
        }
    }
}
