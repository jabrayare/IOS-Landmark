//
//  LandMarkRow.swift
//  LandMarks
//
//  Created by Jibril Mohamed on 12/21/21.
//

import SwiftUI

struct LandMarkRow: View {
    var landmark: Landmark
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()
            if landmark.isFavorite {
            Image(systemName: "star.fill")
                    .frame(width: 100, height: 100)
                .foregroundColor(.yellow)
            }
        }
        .padding()
    }
}

struct LandMarkRow_Previews: PreviewProvider {
    static var landmarks = ModelData().landmarks
    
    static var previews: some View {
        Group{
            LandMarkRow(landmark: landmarks[0])
                
            LandMarkRow(landmark: landmarks[1])
             
            LandMarkRow(landmark: landmarks[2])
               
        }.previewLayout(.fixed(width: 300, height: 70))
       
    }
}
