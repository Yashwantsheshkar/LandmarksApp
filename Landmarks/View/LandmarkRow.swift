//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Yashwant Sheshkar on 28/06/24.
//

import SwiftUI

struct LandmarkRow: View {
   
    var landmark: Landmark
    
    var body: some View{
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            
            Text(landmark.name)
            Spacer()
            
            
        }
    }
    
}

#Preview("Turtle Rock") {
    
    Group{
       
    }
}


    

