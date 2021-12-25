//
//  LandMarkDetail.swift
//  LandMarks
//
//  Created by Jibril Mohamed on 12/21/21.
//

import SwiftUI

struct LandMarkDetail: View {
    @EnvironmentObject var modelData: ModelData
    var landmark: Landmark
    
    var landmarkIndex: Int {
        modelData.landmarks.firstIndex(where: { $0.id == landmark.id})!
    }
    
    var body: some View {
        
        ScrollView{
            MapView(coordinate: landmark.locationCoordinate)
                .frame(height: 300)
                .ignoresSafeArea(edges: .top)
            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading){
                HStack {
                    Text(landmark.name)
                        .font(.title)
                    FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
                }
                
                HStack{
                    Text(landmark.park)
                    Spacer()
                    Text(landmark.state)
                    
                }.foregroundColor(.secondary)
                    .font(.subheadline)
                Divider()
                
                Text("About \(landmark.name)")
                    .font(.title2)
                    .padding(.bottom)
                Text(landmark.description)
                    .font(.body)
            }
            .padding()
            Spacer()
            
            
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
        
    }
}

struct LandMarkDetail_Previews: PreviewProvider {
    
    
    static var previews: some View {
        LandMarkDetail(landmark: ModelData().landmarks[0])
    }
}
