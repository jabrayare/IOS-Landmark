//
//  LandmarkList.swift
//  LandMarks
//
//  Created by Jibril Mohamed on 12/21/21.
//

import SwiftUI

struct LandmarkList: View {
    
    var body: some View {
        NavigationView {
            
            
            List(landmarks, id: \.id) { landmark in
                NavigationLink {
                    LandMarkDetail(landmark: landmark)
                }
            label: {
                LandMarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Land Marks")
        }
       
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
