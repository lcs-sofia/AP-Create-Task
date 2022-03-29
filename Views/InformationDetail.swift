//
//  InformationDetail.swift
//  AP Create Task (iOS)
//
//  Created by Sofia Andrade on 2022-03-28.
//

import SwiftUI

struct InformationDetail: View {
    
    let Info: Information
    var body: some View {
        
        ScrollView {
            
            HStack {
                Text(Info.firstname)
                    .font(.title)
                    .padding(.bottom)
                Text(Info.lastname)
                    .font(.title)
                    .padding(.bottom)

               Spacer()

                Text("ZOOM LINK")
                    .font(.title3)
                   .bold()
                   .padding(.vertical)

           }
            .padding(.horizontal)
            Text(Info.zoomLink)
            
            HStack {

                Text("Days")
                    .font(.title3)
                   .bold()
                   .padding(.vertical)

                Spacer()
            }
            .padding(.horizontal)
            Text("Monday:")
            Group {
                Text(Info.monday)
                Text("Tuesday:")
                Text(Info.tuesday)
                Text("Thursday:")
                Text(Info.thursday)
                Text("Friday:")
                Text(Info.friday)
            }



        }
        .navigationTitle(Info.firstname)
    }
    

struct InformationDetail_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            InformationDetail(Info: Information.example)
            
        }
    }
}

}
