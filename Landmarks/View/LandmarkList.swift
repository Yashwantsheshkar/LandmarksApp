//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Yashwant Sheshkar on 28/06/24.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
     NavigationSplitView {
            List(landmarks, id: \.id) { landmark in
                NavigationLink{
                    LandmarkDetail(landmark: landmark)
                }label: {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        } detail: {
            Text("Select a Landmark")
        }
    }
}

#Preview {
    LandmarkList()
}
