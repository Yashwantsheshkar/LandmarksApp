//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by Yashwant Sheshkar on 29/06/24.
//

import SwiftUI

struct LandmarkDetail: View {
    
    var landmark: Landmark
    
    var body: some View {
        VStack {
            
            MapView(coordinate: landmark.locationCoordinate)
                .frame(height: 300)
            
            CircleImage(image: landmark.image)
                .offset(y:-130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                HStack {
                    Text(landmark.park)
                        
                    Spacer()
                    Text(landmark.state)
                }
                .font(.subheadline)
                .foregroundColor(.gray)
                
                Divider()
                Text("About \(landmark.name)")
                                    .font(.title2)
                                Text(landmark.description)
                            }
                            .padding()
                        }
                        .navigationTitle(landmark.name)
                        .navigationBarTitleDisplayMode(.inline)
                    }
                }


                #Preview {
                    LandmarkDetail(landmark: landmarks[0])
                }
