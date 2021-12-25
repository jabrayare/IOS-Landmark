//
//  LandmarkList.swift
//  LandMarks
//
//  Created by Jibril Mohamed on 12/21/21.
//

import SwiftUI

struct LandmarkList: View {
    
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoriteOnly = false
    
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { landmark in
            (!showFavoriteOnly || landmark.isFavorite)
            
        }
    }
    
    var body: some View {
        NavigationView {
            
            
            List{
                Toggle(isOn: $showFavoriteOnly){
                    Text("Favorites Only")
                }
                
                ForEach(filteredLandmarks, id: \.id){ landmark in
           
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
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
            .environmentObject(ModelData())
    }
}
