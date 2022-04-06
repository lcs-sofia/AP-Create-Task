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
        
        ScrollView {
            
            HStack {
                Text(session.firstname)
                    .font(.title)
                    .padding(.bottom)
                Text(session.lastname)
                    .font(.title)
                    .padding(.bottom)
                    .padding(.vertical)

               Spacer()

                Text("ZOOM LINK")
                    .font(.title3)
                   .bold()
                   .padding(.vertical)
                   .background(Color.green)

           }
            .padding(.horizontal)
            Text(session.zoomLink)
            .background(Color.white)
            
            HStack {

                Text("Weekdays for Grove time :")
                    .font(.title2)
                   .bold()
                   .padding(.vertical)

                Spacer()
            }
            .padding(.horizontal)
            Group {
                Text("Monday:")
                Text(session.monday)
                Text("Tuesday:")
                Text(session.tuesday)
                Text("Thursday:")
                Text(session.thursday)
                Text("Friday:")
                Text(session.friday)
             
                
            }
            .background(Color.white)


        }
        .navigationTitle(session.firstname)
        .background(Color.green)

    }
    

struct InformationDetail_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            InformationDetail(session: Information.example)
            
        }
    }
}

}
