//
//  InformationList.swift
//  AP Create Task (iOS)
//
//  Created by Sofia Andrade on 2022-03-28.
//

import SwiftUI

struct InformationList: View {
    
    @ObservedObject var store : InformationStore
    
    var body: some View {
       
        List(store.sessions) { grovetimes in
            
     
            NavigationLink(destination: InformationDetail(grovetimes : grovetimes))
        {
                
                HStack {
    

                    VStack(alignment: .leading) {
                        Text(currentSession.firstname)
                        Text(currentSession.lastname)
                        Text(currentSession.zoomLink)
                        Text(currentSession.monday)
                        Text(currentSession.tuesday)
                        Text(currentSession.thursday)
                        Text(currentSession.friday)
                        
                            .font(.subheadline)
                    }
                    
                }
                
            }
        }

            
    .navigationTitle("Grove Time")

    }

struct InformationList_Previews: PreviewProvider {
    static var previews: some View {
        InformationList(store: testStore)
    }
}

}

