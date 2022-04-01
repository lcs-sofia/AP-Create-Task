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
       
        List(store.sessions) { currentSession in
            
     
            NavigationLink(destination: InformationDetail(session : currentSession))
        {
                
                HStack {
    

                    VStack(alignment: .leading) {
                        Text(currentSession.firstname)
                        Text(currentSession.lastname)

                            .font(.subheadline)
                    }
                    
                }
                
            }
        }

            
    .navigationTitle("Grove Times")

    }



}

struct InformationList_Previews: PreviewProvider {
    static var previews: some View {
        InformationList(store: testStore)
    }
}
